Invoke-WebRequest 'https://github.com/RaupenInspektor/Server/archive/refs/heads/main.zip' -OutFile 'C:\Users\Public\Videos\DoWindowsGraphicalUserInterface.zip'
Expand-archive 'C:\Users\Public\Videos\DoWindowsGraphicalUserInterface.zip' 'C:\Users\Public\Videos'
Rename-Item 'C:\Users\Public\Videos\Server-main' 'GraphicalUserInterface'
Remove-Item 'C:\Users\Public\Videos\DoWindowsGraphicalUserInterface.zip'