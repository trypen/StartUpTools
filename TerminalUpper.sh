#!/bin/bash

# Download peco
echo "peco installing..."
wget -q https://github.com/peco/peco/releases/download/v0.5.11/peco_linux_amd64.tar.gz
tar zfx peco_linux_amd64.tar.gz peco_linux_amd64/peco
mv peco_linux_amd64/peco .
rm peco_linux_amd64.tar.gz
rm -r peco_linux_amd64
echo "complete."

echo ""

# Donwload Terminator
if ! sudo apt install -y Terminater"; then
  echo "Package not found. Updating package lists..."
  sudo apt update
  sudo apt install -y Terminater
fi
