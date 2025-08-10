#!/bin/bash

# Update and install cozy desktop stuff
sudo apt-get update
sudo apt-get install -y xfce4 xfce4-goodies tightvncserver wget git

# Set VNC password (default: 'password')
mkdir -p ~/.vnc
echo "password" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

# Start VNC server on display :1 with XFCE
vncserver :1 -geometry 1280x720 -depth 24

# Clone noVNC if not already there
if [ ! -d "$HOME/noVNC" ]; then
  git clone https://github.com/novnc/noVNC.git $HOME/noVNC
fi

# Launch noVNC connected to VNC server
$HOME/noVNC/utils/launch.sh --vnc localhost:5901 &  
