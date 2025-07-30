@echo off
echo Starting Obsidian with git sync...

REM Ejecuta el script de apertura
echo Running git pull...
"C:\Program Files\Git\bin\bash.exe" "C:\Users\brand\Documents\ObsidianVault\obsidianopen.sh"
if %ERRORLEVEL% neq 0 (
    echo Warning: Git pull failed or had issues
    pause
)

REM Inicia Obsidian y espera a que se cierre
echo Starting Obsidian...
start /wait "" "C:\Users\brand\AppData\Local\Programs\Obsidian\Obsidian.exe"

REM Ejecuta el script de cierre
echo Running git commit and push...
"C:\Program Files\Git\bin\bash.exe" "C:\Users\brand\Documents\ObsidianVault\obsidianclose.sh"
if %ERRORLEVEL% neq 0 (
    echo Warning: Git commit/push failed or had issues
    pause
)

echo Done!
exit
