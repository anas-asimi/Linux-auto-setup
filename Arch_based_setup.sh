#!/bin/bash

# Perform a system update
echo "🔁 Updating system..."
sudo pacman -Syu --noconfirm
echo "✅ Systeme updated successfully."

# Check if apps.txt exists
if [[ ! -f apps.txt ]]; then
    echo "❌ File apps.txt not found!"
    exit 1
fi

# Read each line from apps.txt and install the package
echo "🔁 Installing packages..."
while IFS= read -r app; do
    # Ignore lines starting with #
    [[ "$app" =~ ^#.*$ ]] && continue
    echo "Installing $app..."
    pacman -S "$app"
done <apps.txt

echo "✅ All packages installed successfully."

# Clean up
sudo pacman -Rns $(pacman -Qdtq) --noconfirm
sudo pacman -Sc --noconfirm

# copy .gitconfig file
cp ./.gitconfig ~
