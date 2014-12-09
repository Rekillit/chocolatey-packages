﻿$packageName = 'opera-developer'
$version = '27.0.1689.22'
$fileType = 'exe'
$installArgs = '/install /silent /launchopera 0 /setdefaultbrowser 0'
$url = 'http://get.geo.opera.com/pub/opera-developer/27.0.1689.22/win/Opera_Developer_27.0.1689.22_Setup.exe'

try {
 
  $regPathModifierArray = @('Wow6432Node\', '')
  $alreadyInstalled = $null
 
  foreach ($regPathModifier in $regPathModifierArray) {
    $regPath = "HKLM:\SOFTWARE\${regPathModifier}Microsoft\Windows\CurrentVersion\Uninstall\Opera $version"
    Write-Output $regPath
    if (Test-Path $regPath) {
      $alreadyInstalled = $true
    }
  }
 
  if ($alreadyInstalled) {
    Write-Output "Opera $version is already installed. Skipping download and installation."
  } else {
    Install-ChocolateyPackage $packageName $fileType $installArgs $url
  }
 
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}