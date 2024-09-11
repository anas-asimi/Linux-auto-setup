#!/usr/bin/bash

# Define the file name
FILE_NAME="apt_apps.txt"

# Perform a system update
echo "🔁 Updating system..."
apt-get update
apt-get upgrade
echo "✅ Systeme updated successfully."

# Check if the file exists
if [[ ! -f "$FILE_NAME" ]]; then
    echo "❌ File $FILE_NAME not found!"
    exit 1
fi

# Read each line from the file and install the package
echo "🔁 Installing packages..."
while IFS= read -r app; do
    # Ignore lines starting with #
    [[ -z "$app" || "$app" =~ ^# ]] && continue
    echo -e "\t🔁 Installing $app ..."

    # Check if app is already installed and up-to-date
    # ! not implemented yet
    # if sudo pacman -Qi "$app" &>/dev/null; then
    #     echo -e "\t✅ $app is already installed and up-to-date"
    #     continue
    # fi

    if sudo apt-get install "$app" --assume-yes; then
        echo -e "\t✅ $app is installed successfully"
    else
        echo -e "\t$app failed to install"
    fi
done <"$FILE_NAME"

echo "✅ All packages installed successfully."

# Clean up
sudo apt autoremove -y
sudo apt clean
