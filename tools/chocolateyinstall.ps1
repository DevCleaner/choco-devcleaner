$ErrorActionPreference = 'Stop';

$PackageName = 'devcleaner'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/DevCleaner/devcleaner/releases/download/v0.1.1/devcleaner-windows.tar.gz'
$checksum64  = 'bd77f80252c91e9d7ee8c894c372e9c7c0ae0227e949181752fa0da778240f52'

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