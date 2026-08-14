#!/bin/bash

echo "[*] Installing massmap..."

# Make sure the script is executable
chmod +x massmap

# Copy to a location in PATH
sudo cp massmap /usr/local/bin/massmap

echo "[+] massmap has been installed successfully!"
echo "[+] You can now run it from anywhere using: massmap"
