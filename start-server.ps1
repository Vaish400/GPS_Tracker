#!/usr/bin/env pwsh
# GPS System - Quick Start Script for Windows PowerShell
# This script starts a local server and opens the project in your browser

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "GPS System - GPS Tracking Solutions" -ForegroundColor Green
Write-Host "Quick Server Launcher for Windows PowerShell" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Check if Python is installed
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✓ Python found: $pythonVersion" -ForegroundColor Green
    $usePython = $true
}
catch {
    Write-Host "✗ Python not found. Attempting to use Node.js..." -ForegroundColor Yellow
    $usePython = $false
}

# Function to start Python server
function Start-PythonServer {
    Write-Host ""
    Write-Host "Starting Python HTTP Server on port 8000..." -ForegroundColor Cyan
    Write-Host ""
    Write-Host "📍 Local URL: http://localhost:8000/index.html" -ForegroundColor Yellow
    Write-Host "📍 Project File: index.html" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Gray
    Write-Host "================================================" -ForegroundColor Cyan
    Write-Host ""
    
    # Start the server
    python -m http.server 8000
}

# Function to start Node.js server
function Start-NodeServer {
    Write-Host ""
    Write-Host "Checking for http-server..." -ForegroundColor Cyan
    
    try {
        $serverVersion = http-server --version 2>&1
        Write-Host "✓ http-server found: $serverVersion" -ForegroundColor Green
    }
    catch {
        Write-Host "Installing http-server globally..." -ForegroundColor Yellow
        npm install -g http-server
    }
    
    Write-Host ""
    Write-Host "Starting Node.js HTTP Server on port 8000..." -ForegroundColor Cyan
    Write-Host ""
    Write-Host "📍 Local URL: http://localhost:8000/index.html" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Gray
    Write-Host "================================================" -ForegroundColor Cyan
    Write-Host ""
    
    http-server -p 8000
}

# Function to open browser
function Open-ProjectBrowser {
    Write-Host ""
    Write-Host "Opening project in default browser..." -ForegroundColor Cyan
    Start-Sleep -Seconds 2  # Wait for server to start
    Start-Process "http://localhost:8000/index.html"
    Write-Host "✓ Browser opened!" -ForegroundColor Green
}

# Main execution
Write-Host "Choose an option:" -ForegroundColor White
Write-Host ""
Write-Host "1️⃣  Start with Python Server (Recommended)" -ForegroundColor Yellow
Write-Host "2️⃣  Start with Node.js Server" -ForegroundColor Yellow
Write-Host ""

if ($usePython) {
    # Auto-run with Python (default choice)
    Write-Host "Starting server with Python..." -ForegroundColor Cyan
    Write-Host ""
    
    # Open browser in background
    Start-Job -ScriptBlock {
        Start-Sleep -Seconds 3
        Start-Process "http://localhost:8000/index.html"
    } | Out-Null
    
    # Start server (blocking)
    Start-PythonServer
}
else {
    # Fallback to Node.js
    Write-Host "Starting server with Node.js..." -ForegroundColor Cyan
    Write-Host ""
    
    # Open browser in background
    Start-Job -ScriptBlock {
        Start-Sleep -Seconds 3
        Start-Process "http://localhost:8000/index.html"
    } | Out-Null
    
    # Start server (blocking)
    Start-NodeServer
}

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "Server stopped." -ForegroundColor Yellow
Write-Host "================================================" -ForegroundColor Cyan
