#!/bin/bash

# Script to check game dependencies for "Batman Smells"

echo "Checking game dependencies..."

# List of required files
files=("game_executable" "config.ini" "assets/sprites" "assets/music" "savegames")

# Function to check if each required file exists
check_files_exist() {
  for file in "${files[@]}"; do
    if [ ! -e "$file" ]; then
      echo "Missing file: $file"
      return 1
    fi
  done
  echo "All required files are present."
  return 0
}

# Start the game if all files are present
if check_files_exist; then
  echo "Starting Batman Smells..."
  # Command to start the game
  ./game_executable
else
  echo "Game cannot start. Please ensure all required files are in place."
fi
