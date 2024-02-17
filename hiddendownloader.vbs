Set objShell = CreateObject("WScript.Shell")

If WScript.Arguments.Count =  2 Then
    Dim batchFilePath, parameter
    batchFilePath = WScript.Arguments(0)
    parameter = WScript.Arguments(1)

    objShell.Run "cmd.exe /c " & batchFilePath & " " & parameter,  0, False
Else
    WScript.Echo "Usage: cscript //nologo script.vbs batchFilePath parameter"
End If