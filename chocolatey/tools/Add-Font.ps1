#########################################################################################
#   MICROSOFT LEGAL STATEMENT FOR SAMPLE SCRIPTS/CODE
#########################################################################################
#   This Sample Code is provided for the purpose of illustration only and is not 
#   intended to be used in a production environment.
#
#   THIS SAMPLE CODE AND ANY RELATED INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY 
#   OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED 
#   WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.
#
#   We grant You a nonexclusive, royalty-free right to use and modify the Sample Code 
#   and to reproduce and distribute the object code form of the Sample Code, provided 
#   that You agree: 
#   (i)    to not use Our name, logo, or trademarks to market Your software product 
#          in which the Sample Code is embedded; 
#   (ii)   to include a valid copyright notice on Your software product in which 
#          the Sample Code is embedded; and 
#   (iii)  to indemnify, hold harmless, and defend Us and Our suppliers from and 
#          against any claims or lawsuits, including attorneys’ fees, that arise 
#          or result from the use or distribution of the Sample Code.
#########################################################################################

#******************************************************************************
# File:     Add-Font.ps1
# Date:     08/28/2013
# Version:  1.0.1
#
# Purpose:  PowerShell script to install Windows fonts.
#
# Usage:    Add-Font -help | -path "<Font file or folder path>"
#
# Copyright (C) 2010 Microsoft Corporation
#
#
# Revisions:
# ----------
# 1.0.0   09/22/2010   Created script.
# 1.0.1   08/28/2013   Fixed help text.  Added quotes around paths in messages.
#
#******************************************************************************

#requires -Version 2.0

#*******************************************************************
# Declare Parameters
#*******************************************************************
param(
    [string] $path = "",
    [switch] $help = $false
)


#*******************************************************************
# Declare Global Variables and Constants
#*******************************************************************

# Define constants
set-variable CSIDL_FONTS 0x14 -option constant

# Create hashtable containing valid font file extensions and text to append to Registry entry name.
$hashFontFileTypes = @{}
$hashFontFileTypes.Add(".fon", "")
$hashFontFileTypes.Add(".fnt", "")
$hashFontFileTypes.Add(".ttf", " (TrueType)")
$hashFontFileTypes.Add(".ttc", " (TrueType)")
$hashFontFileTypes.Add(".otf", " (OpenType)")
# Type 1 fonts require handling multiple resource files.
# Not supported in this script
#$hashFontFileTypes.Add(".mmm", "")
#$hashFontFileTypes.Add(".pbf", "")
#$hashFontFileTypes.Add(".pfm", "")

# Initialize variables
$invocation = (Get-Variable MyInvocation -Scope 0).Value
$scriptPath = Split-Path $Invocation.MyCommand.Path
$fontRegistryPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts"


#*******************************************************************
#  Load C# code
#*******************************************************************
$fontCSharpCode = @'
using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Runtime.InteropServices;

namespace FontResource
{
    public class AddRemoveFonts
    {
        private static IntPtr HWND_BROADCAST = new IntPtr(0xffff);
        private static IntPtr HWND_TOP = new IntPtr(0);
        private static IntPtr HWND_BOTTOM = new IntPtr(1);
        private static IntPtr HWND_TOPMOST = new IntPtr(-1);
        private static IntPtr HWND_NOTOPMOST = new IntPtr(-2);
        private static IntPtr HWND_MESSAGE = new IntPtr(-3);

        [DllImport("gdi32.dll")]
        static extern int AddFontResource(string lpFilename);

        [DllImport("gdi32.dll")]
        static extern int RemoveFontResource(string lpFileName);

        [DllImport("user32.dll",CharSet=CharSet.Auto)]
        private static extern int SendMessage(IntPtr hWnd, WM wMsg, IntPtr wParam, IntPtr lParam);

        [return: MarshalAs(UnmanagedType.Bool)]
        [DllImport("user32.dll", SetLastError = true)]
        private static extern bool PostMessage(IntPtr hWnd, WM Msg, IntPtr wParam, IntPtr lParam);

        public static int AddFont(string fontFilePath) {
            FileInfo fontFile = new FileInfo(fontFilePath);
            if (!fontFile.Exists) 
            {
                return 0; 
            }
            try 
            {
                int retVal = AddFontResource(fontFilePath);

                //This version of SendMessage is a blocking call until all windows respond.
                //long result = SendMessage(HWND_BROADCAST, WM.FONTCHANGE, IntPtr.Zero, IntPtr.Zero);

                //Alternatively PostMessage instead of SendMessage to prevent application hang
                bool posted = PostMessage(HWND_BROADCAST, WM.FONTCHANGE, IntPtr.Zero, IntPtr.Zero);

                return retVal;
            }
            catch
            {
                return 0;
            }
        }

        public static int RemoveFont(string fontFileName) {
            //FileInfo fontFile = new FileInfo(fontFileName);
            //if (!fontFile.Exists) 
            //{
            //    return false; 
            //}
            try 
            {
                int retVal = RemoveFontResource(fontFileName);

                //This version of SendMessage is a blocking call until all windows respond.
                //long result = SendMessage(HWND_BROADCAST, WM.FONTCHANGE, IntPtr.Zero, IntPtr.Zero);

                //Alternatively PostMessage instead of SendMessage to prevent application hang
                bool posted = PostMessage(HWND_BROADCAST, WM.FONTCHANGE, IntPtr.Zero, IntPtr.Zero);

                return retVal;
            }
            catch
            {
                return 0;
            }
        }

        public enum WM : uint
        {
            NULL = 0x0000,
            CREATE = 0x0001,
            DESTROY = 0x0002,
            MOVE = 0x0003,
            SIZE = 0x0005,
            ACTIVATE = 0x0006,
            SETFOCUS = 0x0007,
            KILLFOCUS = 0x0008,
            ENABLE = 0x000A,
            SETREDRAW = 0x000B,
            SETTEXT = 0x000C,
            GETTEXT = 0x000D,
            GETTEXTLENGTH = 0x000E,
            PAINT = 0x000F,
            CLOSE = 0x0010,
            QUERYENDSESSION = 0x0011,
            QUERYOPEN = 0x0013,
            ENDSESSION = 0x0016,
            QUIT = 0x0012,
            ERASEBKGND = 0x0014,
            SYSCOLORCHANGE = 0x0015,
            SHOWWINDOW = 0x0018,
            WININICHANGE = 0x001A,
            SETTINGCHANGE = WM.WININICHANGE,
            DEVMODECHANGE = 0x001B,
            ACTIVATEAPP = 0x001C,
            FONTCHANGE = 0x001D,
            TIMECHANGE = 0x001E,
            CANCELMODE = 0x001F,
            SETCURSOR = 0x0020,
            MOUSEACTIVATE = 0x0021,
            CHILDACTIVATE = 0x0022,
            QUEUESYNC = 0x0023,
            GETMINMAXINFO = 0x0024,
            PAINTICON = 0x0026,
            ICONERASEBKGND = 0x0027,
            NEXTDLGCTL = 0x0028,
            SPOOLERSTATUS = 0x002A,
            DRAWITEM = 0x002B,
            MEASUREITEM = 0x002C,
            DELETEITEM = 0x002D,
            VKEYTOITEM = 0x002E,
            CHARTOITEM = 0x002F,
            SETFONT = 0x0030,
            GETFONT = 0x0031,
            SETHOTKEY = 0x0032,
            GETHOTKEY = 0x0033,
            QUERYDRAGICON = 0x0037,
            COMPAREITEM = 0x0039,
            GETOBJECT = 0x003D,
            COMPACTING = 0x0041,
            COMMNOTIFY = 0x0044,
            WINDOWPOSCHANGING = 0x0046,
            WINDOWPOSCHANGED = 0x0047,
            POWER = 0x0048,
            COPYDATA = 0x004A,
            CANCELJOURNAL = 0x004B,
            NOTIFY = 0x004E,
            INPUTLANGCHANGEREQUEST = 0x0050,
            INPUTLANGCHANGE = 0x0051,
            TCARD = 0x0052,
            HELP = 0x0053,
            USERCHANGED = 0x0054,
            NOTIFYFORMAT = 0x0055,
            CONTEXTMENU = 0x007B,
            STYLECHANGING = 0x007C,
            STYLECHANGED = 0x007D,
            DISPLAYCHANGE = 0x007E,
            GETICON = 0x007F,
            SETICON = 0x0080,
            NCCREATE = 0x0081,
            NCDESTROY = 0x0082,
            NCCALCSIZE = 0x0083,
            NCHITTEST = 0x0084,
            NCPAINT = 0x0085,
            NCACTIVATE = 0x0086,
            GETDLGCODE = 0x0087,
            SYNCPAINT = 0x0088,
            NCMOUSEMOVE = 0x00A0,
            NCLBUTTONDOWN = 0x00A1,
            NCLBUTTONUP = 0x00A2,
            NCLBUTTONDBLCLK = 0x00A3,
            NCRBUTTONDOWN = 0x00A4,
            NCRBUTTONUP = 0x00A5,
            NCRBUTTONDBLCLK = 0x00A6,
            NCMBUTTONDOWN = 0x00A7,
            NCMBUTTONUP = 0x00A8,
            NCMBUTTONDBLCLK = 0x00A9,
            NCXBUTTONDOWN = 0x00AB,
            NCXBUTTONUP = 0x00AC,
            NCXBUTTONDBLCLK = 0x00AD,
            INPUT_DEVICE_CHANGE = 0x00FE,
            INPUT = 0x00FF,
            KEYFIRST = 0x0100,
            KEYDOWN = 0x0100,
            KEYUP = 0x0101,
            CHAR = 0x0102,
            DEADCHAR = 0x0103,
            SYSKEYDOWN = 0x0104,
            SYSKEYUP = 0x0105,
            SYSCHAR = 0x0106,
            SYSDEADCHAR = 0x0107,
            UNICHAR = 0x0109,
            KEYLAST = 0x0109,
            IME_STARTCOMPOSITION = 0x010D,
            IME_ENDCOMPOSITION = 0x010E,
            IME_COMPOSITION = 0x010F,
            IME_KEYLAST = 0x010F,
            INITDIALOG = 0x0110,
            COMMAND = 0x0111,
            SYSCOMMAND = 0x0112,
            TIMER = 0x0113,
            HSCROLL = 0x0114,
            VSCROLL = 0x0115,
            INITMENU = 0x0116,
            INITMENUPOPUP = 0x0117,
            MENUSELECT = 0x011F,
            MENUCHAR = 0x0120,
            ENTERIDLE = 0x0121,
            MENURBUTTONUP = 0x0122,
            MENUDRAG = 0x0123,
            MENUGETOBJECT = 0x0124,
            UNINITMENUPOPUP = 0x0125,
            MENUCOMMAND = 0x0126,
            CHANGEUISTATE = 0x0127,
            UPDATEUISTATE = 0x0128,
            QUERYUISTATE = 0x0129,
            CTLCOLORMSGBOX = 0x0132,
            CTLCOLOREDIT = 0x0133,
            CTLCOLORLISTBOX = 0x0134,
            CTLCOLORBTN = 0x0135,
            CTLCOLORDLG = 0x0136,
            CTLCOLORSCROLLBAR = 0x0137,
            CTLCOLORSTATIC = 0x0138,
            MOUSEFIRST = 0x0200,
            MOUSEMOVE = 0x0200,
            LBUTTONDOWN = 0x0201,
            LBUTTONUP = 0x0202,
            LBUTTONDBLCLK = 0x0203,
            RBUTTONDOWN = 0x0204,
            RBUTTONUP = 0x0205,
            RBUTTONDBLCLK = 0x0206,
            MBUTTONDOWN = 0x0207,
            MBUTTONUP = 0x0208,
            MBUTTONDBLCLK = 0x0209,
            MOUSEWHEEL = 0x020A,
            XBUTTONDOWN = 0x020B,
            XBUTTONUP = 0x020C,
            XBUTTONDBLCLK = 0x020D,
            MOUSEHWHEEL = 0x020E,
            MOUSELAST = 0x020E,
            PARENTNOTIFY = 0x0210,
            ENTERMENULOOP = 0x0211,
            EXITMENULOOP = 0x0212,
            NEXTMENU = 0x0213,
            SIZING = 0x0214,
            CAPTURECHANGED = 0x0215,
            MOVING = 0x0216,
            POWERBROADCAST = 0x0218,
            DEVICECHANGE = 0x0219,
            MDICREATE = 0x0220,
            MDIDESTROY = 0x0221,
            MDIACTIVATE = 0x0222,
            MDIRESTORE = 0x0223,
            MDINEXT = 0x0224,
            MDIMAXIMIZE = 0x0225,
            MDITILE = 0x0226,
            MDICASCADE = 0x0227,
            MDIICONARRANGE = 0x0228,
            MDIGETACTIVE = 0x0229,
            MDISETMENU = 0x0230,
            ENTERSIZEMOVE = 0x0231,
            EXITSIZEMOVE = 0x0232,
            DROPFILES = 0x0233,
            MDIREFRESHMENU = 0x0234,
            IME_SETCONTEXT = 0x0281,
            IME_NOTIFY = 0x0282,
            IME_CONTROL = 0x0283,
            IME_COMPOSITIONFULL = 0x0284,
            IME_SELECT = 0x0285,
            IME_CHAR = 0x0286,
            IME_REQUEST = 0x0288,
            IME_KEYDOWN = 0x0290,
            IME_KEYUP = 0x0291,
            MOUSEHOVER = 0x02A1,
            MOUSELEAVE = 0x02A3,
            NCMOUSEHOVER = 0x02A0,
            NCMOUSELEAVE = 0x02A2,
            WTSSESSION_CHANGE = 0x02B1,
            TABLET_FIRST = 0x02c0,
            TABLET_LAST = 0x02df,
            CUT = 0x0300,
            COPY = 0x0301,
            PASTE = 0x0302,
            CLEAR = 0x0303,
            UNDO = 0x0304,
            RENDERFORMAT = 0x0305,
            RENDERALLFORMATS = 0x0306,
            DESTROYCLIPBOARD = 0x0307,
            DRAWCLIPBOARD = 0x0308,
            PAINTCLIPBOARD = 0x0309,
            VSCROLLCLIPBOARD = 0x030A,
            SIZECLIPBOARD = 0x030B,
            ASKCBFORMATNAME = 0x030C,
            CHANGECBCHAIN = 0x030D,
            HSCROLLCLIPBOARD = 0x030E,
            QUERYNEWPALETTE = 0x030F,
            PALETTEISCHANGING = 0x0310,
            PALETTECHANGED = 0x0311,
            HOTKEY = 0x0312,
            PRINT = 0x0317,
            PRINTCLIENT = 0x0318,
            APPCOMMAND = 0x0319,
            THEMECHANGED = 0x031A,
            CLIPBOARDUPDATE = 0x031D,
            DWMCOMPOSITIONCHANGED = 0x031E,
            DWMNCRENDERINGCHANGED = 0x031F,
            DWMCOLORIZATIONCOLORCHANGED = 0x0320,
            DWMWINDOWMAXIMIZEDCHANGE = 0x0321,
            GETTITLEBARINFOEX = 0x033F,
            HANDHELDFIRST = 0x0358,
            HANDHELDLAST = 0x035F,
            AFXFIRST = 0x0360,
            AFXLAST = 0x037F,
            PENWINFIRST = 0x0380,
            PENWINLAST = 0x038F,
            APP = 0x8000,
            USER = 0x0400,
            CPL_LAUNCH = USER+0x1000,
            CPL_LAUNCHED = USER+0x1001,
            SYSTIMER = 0x118
        }

    }
}
'@
Add-Type $fontCSharpCode


#*******************************************************************
# Declare Functions
#*******************************************************************

#*******************************************************************
# Function Get-SpecialFolder()
#
# Purpose:  Convert a CSIDL string to a folder parh string
#
# Input:    $id    CSIDL folder identifier string
#
# Returns:  Folder path
#
#*******************************************************************
function Get-SpecialFolder($id)
{
    $shell = New-Object –COM "Shell.Application"
    $folder = $shell.NameSpace($id)
    $specialFolder = $folder.Self.Path
    $specialFolder
}


#*******************************************************************
# Function Add-SingleFont()
#
# Purpose:  Install a font file
#
# Input:    $file    Font file path
#
# Returns:  0 - success, 1 - failure
#
#*******************************************************************
function Add-SingleFont($filePath)
{
    try
    {
        [string]$filePath = (resolve-path $filePath).path
        [string]$fileDir  = split-path $filePath
        [string]$fileName = split-path $filePath -leaf
        [string]$fileExt = (Get-Item $filePath).extension
        [string]$fileBaseName = $fileName -replace($fileExt ,"")

        $shell = new-object -com shell.application
        $myFolder = $shell.Namespace($fileDir)
        $fileobj = $myFolder.Items().Item($fileName)
        $fontName = $myFolder.GetDetailsOf($fileobj,21)

        if ($fontName -eq "") { $fontName = $fileBaseName }

        copy-item $filePath -destination $fontsFolderPath

        $fontFinalPath = Join-Path $fontsFolderPath $fileName
        $retVal = [FontResource.AddRemoveFonts]::AddFont($fontFinalPath)

        if ($retVal -eq 0) {
            Write-Host "Font `'$($filePath)`'`' installation failed"
            Write-Host ""
            1
        }
        else
        {
            Write-Host "Font `'$($filePath)`' installed successfully"
            Write-Host ""
            Set-ItemProperty -path "$($fontRegistryPath)" -name "$($fontName)$($hashFontFileTypes.item($fileExt))" -value "$($fileName)" -type STRING
            0
        }
        ""
    }
    catch
    {
        Write-Host "An error occured installing `'$($filePath)`'"
        Write-Host ""
        Write-Host "$($error[0].ToString())"
        Write-Host ""
        $error.clear()
        1
    }
}


#*******************************************************************
# Function Show-Usage()
#
# Purpose:   Shows the correct usage to the user.
#
# Input:     None
#
# Output:    Help messages are displayed on screen.
#
#*******************************************************************
function Show-Usage()
{
$usage = @'
Add-Font.ps1
This script is used to install Windows fonts.

Usage:
Add-Font.ps1 -help | -path "<Font file or folder path>"

Parameters:

    -help
     Displays usage information.

    -path
     May be either the path to a font file to install or the path to a folder 
     containing font files to install.  Valid file types are .fon, .fnt,
     .ttf,.ttc, .otf, .mmm, .pbf, and .pfm

Examples:
    Add-Font.ps1
    Add-Font.ps1 -path "C:\Custom Fonts\MyFont.ttf"
    Add-Font.ps1 -path "C:\Custom Fonts"
'@

$usage
}


#*******************************************************************
# Function Process-Arguments()
#
# Purpose: To validate parameters and their values
#
# Input:   All parameters
#
# Output:  Exit script if parameters are invalid
#
#*******************************************************************
function Process-Arguments()
{
    ## Write-host 'Processing Arguments'

    if ($unnamedArgs.Length -gt 0)
    {
        write-host "The following arguments are not defined:"
        $unnamedArgs
    }

    if ($help -eq $true) 
    { 
        Show-Usage
        break
    }

    if ((Test-Path $path -PathType Leaf) -eq $true)
    {
        If ($hashFontFileTypes.ContainsKey((Get-Item $path).Extension))
        {
            $retVal = Add-SingleFont $path
            if ($retVal -ne 0)
            {
                exit 1
            }
            else
            {
                exit 0
            }
        }
        else
        {
            "`'$($path)`' not a valid font file type"
            ""
            exit 1
        }
    }
    elseif ((Test-Path $path -PathType Container) -eq $true)
    {
        $bErrorOccured = $false
        foreach($file in (Get-Childitem $path))
        {

            if ($hashFontFileTypes.ContainsKey($file.Extension))
            {
                $retVal = Add-SingleFont (Join-Path $path $file.Name)
                if ($retVal -ne 0)
                {
                    $bErrorOccured = $true
                }
            }
            else
            {
                "`'$(Join-Path $path $file.Name)`' not a valid font file type"
                ""
            }
        }

        If ($bErrorOccured -eq $true)
        { 
            exit 1 
        }
        else
        {
            exit 0
        }
    }
    else
    {
        "`'$($path)`' not found"
        ""
        exit 1
    }
}


#*******************************************************************
# Main Script
#*******************************************************************

$fontsFolderPath = Get-SpecialFolder($CSIDL_FONTS)
Process-Arguments

