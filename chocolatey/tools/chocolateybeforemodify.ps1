# Removing fonts
function Get-CurrentDirectory
{{
  $thisName = $MyInvocation.MyCommand.Name
  [IO.Path]::GetDirectoryName((Get-Content function:$thisName).File)
}}

$RemoveFont = Join-Path (Get-CurrentDirectory) "Remove-Font.ps1"
foreach ($font in ({fonts})) {{
  & "$RemoveFont" "$font"
}}
