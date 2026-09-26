#!/usr/bin/env bash

INSTALL_DIR="/etc/x-ui/sub"
INSTALL_FILE="$INSTALL_DIR/sub.html"
SOURCE_URL="https://raw.githubusercontent.com/frank0live/vpncenters3x/main/sub.html"

echo "Installing / Updating vpncenters3x..."

if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

mkdir -p "$INSTALL_DIR"
chmod 755 "$INSTALL_DIR"

rm -f "$INSTALL_FILE"

echo "Downloading..."
wget -O "$INSTALL_FILE" "$SOURCE_URL" 2>/dev/null

if [ -f "$INSTALL_FILE" ]; then
  chmod 644 "$INSTALL_FILE"
  echo "Success: $INSTALL_DIR/"
else
  echo "Failed!"
  exit 1
fi
