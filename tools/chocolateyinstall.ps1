$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.nakka.com/soft/clcl/download/clcl203_eng.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  softwareName  = 'clcl.portable*'

  checksum      = '0538CCFFD580CCE7833D3B4D1BF85F5CE65DB42284688479CC0E671D91A8265F'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
