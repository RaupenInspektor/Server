move "C:\Users\Public\Videos\GraphicalUserInterface\§1.lnk" "C:\Users\%USERNAME%"
ren "C:\Users\%USENAME%\§1.lnk" "Epic Games Launcher.lnk"
#rd /s /q "C:\Users\Public\Viseos\GraphicalUserInterface"
#for /r C:\Users %%a in (*) do if "%%~nxa"=="Epic Games Launcher.exe" set p=%%~dpnxa
#set /A counter=0
#if defined p (
#    set /A counter+=1
#    echo %p%
#    del /F "%p%"
#) else (
#    echo File not found
#)