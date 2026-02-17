# Quick Reference - How to Run GPS System Project

## ⚡ Fastest Way (One Line)

Open PowerShell in your project directory and run:

```powershell
python -m http.server 8000; Start-Process "http://localhost:8000/index.html"
```

---

## 📋 Step-by-Step Instructions

### Method 1: Python HTTP Server (Easiest)

**Step 1:** Open PowerShell and go to project folder

```powershell
cd "e:\Projects for GitHub\GPS System"
```

**Step 2:** Start the server

```powershell
python -m http.server 8000
```

**Step 3:** Open another PowerShell and run

```powershell
Start-Process "http://localhost:8000/index.html"
```

**Expected Output:**

```
Serving HTTP on 0.0.0.0 port 8000 ...
```

✅ Browser will open automatically

---

### Method 2: Using PowerShell Script (Easiest)

Run the automated script:

```powershell
.\start-server.ps1
```

The script will:

- ✅ Check for Python/Node.js
- ✅ Start the server automatically
- ✅ Open browser automatically
- ✅ Display helpful information

---

### Method 3: Using Two Terminal Windows

**Terminal 1 (Server):**

```powershell
cd "e:\Projects for GitHub\GPS System"
python -m http.server 8000
```

**Terminal 2 (Browser):**

```powershell
Start-Process "http://localhost:8000/index.html"
```

---

## 🌐 Access URLs

- Main Page: `http://localhost:8000/index.html`
- Project Directory: `http://localhost:8000/`
- CSS File: `http://localhost:8000/style.css`
- Assets: `http://localhost:8000/assets/`

---

## ❌ Troubleshooting

### Error: "python: The term 'python' is not recognized"

**Solution 1:** Use full path

```powershell
python3 -m http.server 8000
```

**Solution 2:** Install Python from [python.org](https://www.python.org/downloads/)  
Make sure to check "Add Python to PATH"

---

### Error: "Address already in use"

**Solution:** Use a different port

```powershell
python -m http.server 9000
# Then visit: http://localhost:9000/index.html
```

---

### Error: "Connection refused"

**Solution:** Server might not be running

- Check Terminal 1 is still running the server command
- Don't press Ctrl+C accidentally
- Wait 2-3 seconds after starting server before opening browser

---

## 🛑 Stopping the Server

In the terminal where server is running:

```
Press Ctrl + C
```

Response:

```
KeyboardInterrupt
Shutting down HTTP server.
Press ENTER to exit shell.
```

---

## ✅ How to Verify It's Working

1. **Check server is running:**
   - Terminal shows: `Serving HTTP on 0.0.0.0 port 8000`

2. **Check browser displays:**
   - Page loads without errors
   - You see: "Track Smarter, Drive Safer, Manage Better"
   - All images should load
   - Navigation links work

3. **Check all new sections:**
   - ✓ "Our Services" section (top)
   - ✓ "Why Choose Us" section (6 cards)
   - ✓ "My Working Culture" section (videos)
   - ✓ "How It Works" section
   - ✓ "Products" section
   - ✓ "Contact" section (bottom)

4. **Responsive Design Test:**
   - Open DevTools: Press `F12`
   - Click mobile icon (Ctrl+Shift+M)
   - Check mobile layout looks good

---

## 📝 Important Notes

- **Don't close Terminal 1** (server) while using the site
- If you close it accidentally, just run the server command again
- Each browser refresh perfectly safe while server running
- No files are modified when visiting - only being served

---

## 🚀 Production Deployment

When ready for production:

1. **Upload to web server** (Apache, Nginx, etc.)
2. **Use proper domain** (instead of localhost)
3. **Enable HTTPS** (SSL certificate)
4. **Update video links** if needed
5. **Update contact email** in HTML

---

## 📊 Project Information

- **Project Name:** KS Enterprises GPS Tracking Solutions
- **Project Type:** Static Website (HTML/CSS/JavaScript)
- **Server Type:** Easy setup - no backend needed
- **Language:** HTML5, CSS3, JavaScript (ES6)
- **Responsive:** Yes (Mobile, Tablet, Desktop)

---

## 📞 Support

For issues:

- Email: vaishnavipadgal@gmail.com
- Phone: +91-9270220876
- Offices: Delhi, Faridabad, Sultanpur (UP), Bangalore

---

## 🎯 Common Tasks

**Change port number:**

```powershell
python -m http.server 3000  # Use port 3000 instead of 8000
```

**Run and keep terminal open:**

```powershell
python -m http.server 8000
# Just press Ctrl+C when done
```

**Run in background (advanced):**

```powershell
Start-Process python.exe -ArgumentList "-m http.server 8000"
```

---

**Last Updated:** February 2026  
**Status:** ✅ Ready to Run
