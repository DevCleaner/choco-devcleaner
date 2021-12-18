$ErrorActionPreference = 'Stop';

$PackageName = 'devcleaner'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/DevCleaner/devcleaner/releases/download/v0.1.1.beta/devcleaner-windows.tar.gz'
$checksum64  = '20bcd1adf7cbd0d0b2c6c2cb959cdc4299efff1da669ea01c512fbaa1d8435bf'

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