#!/bin/bash

# Change to the vault directory
cd "/c/Users/brand/Documents/ObsidianVault" || { 
    echo "Error: Directorio no encontrado"
    exit 1
}

echo "Adding changes to git..."
git add -A

# Check if there are any changes to commit
if git diff --staged --quiet; then
    echo "No changes to commit"
else
    echo "Committing changes..."
    
    # Check if git user is configured
    if ! git config user.name >/dev/null 2>&1 || ! git config user.email >/dev/null 2>&1; then
        echo "Git user not configured. Setting default user for this repository..."
        git config user.name "Obsidian Vault Auto-Commit"
        git config user.email "vault@local.obsidian"
    fi
    
    git commit -m "Auto commit $(date '+%Y-%m-%d %H:%M:%S')"
    
    echo "Attempting to push to remote..."
    
    # Set git to not prompt for credentials and fail fast
    export GIT_TERMINAL_PROMPT=0
    export GIT_ASKPASS=echo
    
    # Try to push but fail fast if there are issues
    git push origin main || {
        echo "Warning: Push failed - possibly due to authentication or network issues"
        echo "You may need to push manually later using: git push origin main"
    }
fi

echo "Git sync attempt completed"