#!/bin/bash
set -e

# Update packages
sudo apt-get update

# Try installing noVNC and websockify from apt first
if ! sudo apt-get install -y novnc websockify; then
  echo "apt-get novnc/websockify install failed, trying pip3 instead..."

  # Install python3-pip if needed
  sudo apt-get install -y python3-pip

  # Install websockify via pip
  pip3 install --user websockify

  # Clone noVNC if not present
  if [ ! -d "$HOME/noVNC" ]; then
    git clone https://github.com/novnc/noVNC.git $HOME/noVNC
  fi

  # Start websockify using pip user install path
  ~/.local/bin/websockify --web=$HOME/noVNC 6080 localhost:5901 &
else
  # Start websockify normally if apt install worked
  websockify --web=/usr/share/novnc 6080 localhost:5901 &
fi

echo "✨ noVNC frontend should now be running on port 6080!"
