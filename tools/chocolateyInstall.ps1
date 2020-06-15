$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://cdn.bullzip.com/download/pdf_pro_exp/Setup_BullzipPDFPrinter_11_13_0_2823_PRO_EXP.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'bullzip-pdf'

  checksum      = '2B8CC8E80E4EF965F39BC32C6FF83A5BD96136CCBEFB06EFBFA52E340D158251'
  checksumType  = 'sha256'

  silentArgs='/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
