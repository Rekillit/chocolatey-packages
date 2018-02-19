$packageName = 'nim'
$version = '0.17.2'
$url = 'https://nim-lang.org/download/nim-0.17.2_x32.zip'
$url64 = 'https://nim-lang.org/download/nim-0.17.2_x64.zip'

$binRoot = Get-ToolsLocation
Write-Debug "Bin Root is $binRoot"

Install-ChocolateyZipPackage "$packageName" $url $binRoot $url64

$installDir = Join-Path "$binRoot" "nim-0.17.2"
Write-Host "Adding Nim to Path"
Install-ChocolateyPath "$installDir\bin" 'Machine'

Update-SessionEnvironment
