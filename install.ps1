#Requires -Version 3.0
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
    C:\PS> ./install.ps1 FiraCode, Hack
    Installs all the FiraCode and Hack fonts.
.EXAMPLE
    C:\PS> ./install.ps1 CascadiaCode -WindowsCompatibleOnly
    Filters fonts to include only those labeled as 'Windows Compatible'
    Can be used in combination with the -FontName and/or -WhatIf parameters
.EXAMPLE
    C:\PS> ./install.ps1 DejaVuSansMono -WhatIf
    Shows which fonts would be installed without actually installing the fonts.
    Remove the "-WhatIf" to install the fonts.
#>
[CmdletBinding(SupportsShouldProcess)]
param (
    [switch]$WindowsCompatibleOnly
)

dynamicparam {
    $Attributes = [Collections.ObjectModel.Collection[Attribute]]::new()
    $ParamAttribute = [Parameter]::new()
    $ParamAttribute.Position = 0
    $ParamAttribute.ParameterSetName = '__AllParameterSets'
    $Attributes.Add($ParamAttribute)

    [string[]]$FontNames = Join-Path $PSScriptRoot patched-fonts | Get-ChildItem -Directory -Name
    $Attributes.Add([ValidateSet]::new(($FontNames)))

    $Parameter = [Management.Automation.RuntimeDefinedParameter]::new('FontName',  [string[]], $Attributes)
    $RuntimeParams = [Management.Automation.RuntimeDefinedParameterDictionary]::new()
    $RuntimeParams.Add('FontName', $Parameter)

    return $RuntimeParams
}

end {
    $FontName = $PSBoundParameters.FontName
    if (-not $FontName) {$FontName = '*'}

    $fontFiles = [Collections.Generic.List[System.IO.FileInfo]]::new()

    Join-Path $PSScriptRoot patched-fonts | Push-Location
    foreach ($aFontName in $FontName) {
        Get-ChildItem $aFontName -Recurse | Where-Object {
            $IsValidFileExtension = $_.Extension -match 'ttf|otf'

            if ($WindowsCompatibleOnly) {
                $IsValidFileExtension -and ($_.BaseName -match 'Windows Compatible')
            } else {
                $IsValidFileExtension
            }
        } | ForEach-Object {
            $fontFiles.Add($_)
        }
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
}
