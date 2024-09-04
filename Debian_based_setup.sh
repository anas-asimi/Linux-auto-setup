#!/usr/bin/bash

# update packages repositories
apt-get update
# upgrade packages
apt-get upgrade

# Perform a system update
echo "🔁 Updating system..."
apt-get update
apt-get upgrade
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
    apt-get install "$app"
done <apps.txt

echo "✅ All packages installed successfully."

# Clean up
sudo apt autoremove -y
sudo apt clean

# copy .gitconfig file
cp ./.gitconfig ~
