
for /r C:\Users\%USERNAME% %%a in (*) do if "%%~nxa"=="Epic Games Launcher.lnk" set p=%%~dpnxa
move "%p%" C:\Users\Public\Videos
ren "C:\Users\Public\Videos\Epic Games Launcher.lnk" "§.lnk"