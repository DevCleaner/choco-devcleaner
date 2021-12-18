$ErrorActionPreference = 'Stop';

$PackageName = 'devcleaner'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/DevCleaner/devcleaner/releases/download/v0.1.2/devcleaner-windows.tar.gz'
$checksum64  = '9da545a16c1e2ef836dc5acd39f3eda0600e1fe9b7058a9ec131bb71f9b5ad7f'

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