@echo off
REM Ejecuta el script de apertura
"C:\Program Files\Git\bin\bash.exe" --login -i "C:\Users\Brandon\Documents\ObsidianVault\obsidianopen.sh"

REM Inicia Obsidian y espera a que se cierre
start /wait "" "C:\Users\Brandon\AppData\Local\Programs\Obsidian\Obsidian.exe"

REM Ejecuta el script de cierre
"C:\Program Files\Git\bin\bash.exe" --login -i "C:\Users\Brandon\Documents\ObsidianVault\obsidianclose.sh"
exit
