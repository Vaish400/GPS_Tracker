# GPS System Project - Setup & Running Guide

This guide will help you run the GPS System project locally on your Windows machine.

## Option 1: Using Python (Recommended - Easiest)

### Python 3.x (Windows)

1. **Open PowerShell** in your project directory
2. **Run the Python HTTP Server:**

```powershell
python -m http.server 8000
```

3. **Open your browser** and go to:

```
http://localhost:8000/index.html
```

4. **To stop the server:** Press `Ctrl + C` in PowerShell

---

## Option 2: Using Node.js with http-server

### Step 1: Install http-server globally

```powershell
npm install -g http-server
```

### Step 2: Navigate to project folder and run

```powershell
http-server -p 8000
```

### Step 3: Open browser

```
http://localhost:8000/index.html
```

---

## Option 3: Using PowerShell to Open Browser

### If you already have the server running:

```powershell
Start-Process "http://localhost:8000/index.html"
```

**Note:** Make sure your local server is running in another terminal before running this command.

---

## Option 4: Using VS Code Live Server Extension

### Step 1: Install Extension

- Open VS Code
- Go to Extensions (Ctrl + Shift + X)
- Search for "Live Server"
- Click "Install"

### Step 2: Run Live Server

- Right-click on `index.html`
- Select "Open with Live Server"
- Browser will automatically open at `http://127.0.0.1:5500/index.html`

---

## Quick Start Command (Python + Browser)

Run both commands in PowerShell:

```powershell
# Terminal 1: Start the server
python -m http.server 8000

# Terminal 2: Open browser (in another PowerShell window)
Start-Process "http://localhost:8000/index.html"
```

---

## Troubleshooting

### "Port 8000 already in use"

Use a different port:

```powershell
python -m http.server 9000
# Then visit: http://localhost:9000/index.html
```

### "python command not found"

- Check if Python is installed: `python --version`
- If not installed, download from [python.org](https://www.python.org/downloads/)
- Make sure "Add Python to PATH" is selected during installation

### Browser shows "Connection refused"

- Make sure the server is running in your terminal
- Check the port number matches (default is 8000)
- Verify the URL is correct

---

## Project Structure

```
GPS System/
├── index.html          (Main HTML file)
├── style.css           (Styling)
├── SETUP.md            (This file)
├── README.md           (Project documentation)
├── assets/             (Images and media)
└── composer.lock       (PHP dependencies)
```

---

## Features

✅ Enhanced "Our Services" section  
✅ Professional "Why Choose Us" cards  
✅ "My Working Culture" video section with alternating layouts  
✅ Fully responsive design  
✅ Smooth animations and transitions  
✅ Professional styling and UX

---

## Support

For issues or questions, contact: vaishnavipadgal@gmail.com
