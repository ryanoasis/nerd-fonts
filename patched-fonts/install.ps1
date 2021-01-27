<#
.SYNOPSIS
    Installs the provided fonts.
.DESCRIPTION
    Installs all the provided fonts by default.  The FontName
    parameter can be used to pick a subset of fonts to install.
.EXAMPLE
    C:\PS> ./install.ps1
    Installs all the fonts located in the Git repository.
.EXAMPLE
    C:\PS> ./install.ps1 furamono-, hack-*
    Installs all the FuraMono and Hack fonts.
.EXAMPLE
    C:\PS> ./install.ps1 d* -WhatIf
    Shows which fonts would be installed without actually installing the fonts.
    Remove the "-WhatIf" to install the fonts.
#>
[CmdletBinding(SupportsShouldProcess)]
param(
    # Specifies the font name to install.  Default value will install all fonts.
    [Parameter(Position=0)]
    [string[]]
    $FontName = '*'
)

$fontFiles = New-Object 'System.Collections.Generic.List[System.IO.FileInfo]'

Push-Location $PSScriptRoot
foreach ($aFontName in $FontName) {
    Get-ChildItem $aFontName -Filter "*.ttf" -Recurse | Foreach-Object {$fontFiles.Add($_)}
    Get-ChildItem $aFontName -Filter "*.otf" -Recurse | Foreach-Object {$fontFiles.Add($_)}
}
Pop-Location

$fonts = $null
foreach ($fontFile in $fontFiles) {
    if ($PSCmdlet.ShouldProcess($fontFile.Name, "Install Font")) {
        if (!$fonts) {
            $shellApp = New-Object -ComObject shell.application
            $fonts = $shellApp.NameSpace(0x14)
        }
        $fonts.CopyHere($fontFile.FullName)
    }
}
