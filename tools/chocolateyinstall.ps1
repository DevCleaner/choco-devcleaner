$ErrorActionPreference = 'Stop';

$PackageName = 'devcleaner'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/DevCleaner/devcleaner/releases/download/v0.1.0/devcleaner-windows.tar.gz'
$checksum64  = '6d659e0f7d3232dee5bd6b4ae09050f2e79e63f05e4bb13046d844fb3d17011b'

$packageArgs = @{
  packageName   = $packageName
  softwareName  = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url64
  checksum      = $checksum64
  checksumType  = 'sha256'

}
Install-ChocolateyZipPackage @packageArgs
$File = Get-ChildItem -File -Path $env:ChocolateyInstall\lib\$packageName\tools\ -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $File.FullName -destination $env:ChocolateyInstall\lib\$packageName\tools\