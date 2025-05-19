cd "/c/Users/Brandon/Documents/ObsidianVault" || { echo "Directorio no encontrado"; exit 1; }
git add -A
git commit -m "Auto commit $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main