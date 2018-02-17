$packageName = 'nim'
$version = '0.17.2'
$fileType = 'zip'
$url = 'https://nim-lang.org/download/nim-0.17.2_x32.zip'
$unzip = '$env:ChocolateyBinRoot'
$url64 = 'https://nim-lang.org/download/nim-0.17.2_x64.zip'

Install-ChocolateyZipPackage -PackageName $packageName $url $unzip $url64

$path = '$env:ChocolateyBinRoot/nim-0.17.2/bin'

Install-ChocolateyPath `
  -PathToInstall $path `
  -PathType 'Machine'

