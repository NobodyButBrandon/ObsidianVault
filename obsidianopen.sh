#!/bin/bash

# Change to the vault directory
cd "/c/Users/brand/Documents/ObsidianVault" || { 
    echo "Error: Directorio no encontrado"
    exit 1
}

echo "Attempting to pull latest changes from git..."

# Set git to not prompt for credentials and timeout quickly
export GIT_TERMINAL_PROMPT=0
export GIT_ASKPASS=echo

# Try to pull but fail fast if there are issues
git pull origin main || {
    echo "Git pull failed - possibly due to authentication or network issues"
    echo "Continuing with Obsidian startup..."
}

echo "Git sync attempt completed"