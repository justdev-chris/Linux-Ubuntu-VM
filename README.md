# Linux Ubuntu VM 🐾💻

A lightweight Ubuntu Linux virtual machine environment running in GitHub Codespaces, accessible via VNC and a browser UI for cozy remote desktop fun!

---

## Features ✨
- Ubuntu desktop environment in the cloud  
- VNC server for graphical access  
- No local installation needed — runs fully online  
- Supports running GUI apps like Google Chrome  
- Easy start with a simple script  
- Great for learning, development, and testing  

---

## Setup Instructions 🛠️
1. Open this repo in Github Codespaces
2. Run the start script:
```bash
./setup-gui.sh
```
4. Access the desktop through the provided VNC URL or via the noVNC web client on port 6080  
5. Use the terminal inside the VM or launch GUI apps  
5. Stop the VM by killing the server process or closing Codespaces  

---

## Usage Tips 🐱
- Install new software with apt:  
  ```bash
  sudo apt-get update
  sudo apt-get install firefox
`
    •    Run GUI apps inside the VNC desktop
    •    Connect using any VNC client or your browser

---

Known Limitations ⚠️
    •    No GPU acceleration (yet!)
    •    Input may lag; click inside VNC window for focus
    •    Best for light GUI tasks, not gaming

---

Troubleshooting 🩹
    •    Gray VNC screen? Run DISPLAY=:1 terminal & OR scroll down and see the task bar.
    •    GUI apps error? Use terminal or simpler GUI tools
    •    For popups, install zenity or xmessage

---

Contributing & Feedback 

Feel free to open issues or PRs to make this VM fluffier and better!

---

License

MIT License — Share the code


