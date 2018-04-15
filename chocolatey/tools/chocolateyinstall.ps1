$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Join-Path (Split-Path $tools) "fonts"
 
function Get-CurrentDirectory
{{
  $thisName = $MyInvocation.MyCommand.Name
  [IO.Path]::GetDirectoryName((Get-Content function:$thisName).File)
}}

Install-ChocolateyZipPackage `
  -PackageName "$env:ChocolateyPackageName" `
  -Url 'https://github.com/ryanoasis/nerd-fonts/releases/download/{version}/{font}.zip' `
  -Checksum '{hash}' `
  -ChecksumType 'SHA256' `
  -UnzipLocation $package
 
$AddFont = Join-Path (Get-CurrentDirectory) 'Add-Font.ps1'
& $AddFont -Path "$package"
Remove-Item -Recurse -Force $package
