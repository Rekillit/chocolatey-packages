$packageName = 'nim'
$version = '0.17.2'
$fileType = 'exe'
$installArgs = '/S'
$url = 'https://nim-lang.org/download/nim-0.17.2_x32.zip'
$url64 = 'https://nim-lang.org/download/nim-0.17.2_x64.zip'

Install-ChocolateyPackage $packageName $fileType $installArgs $url $url64
