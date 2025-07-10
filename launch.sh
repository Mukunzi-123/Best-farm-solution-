#!/bin/bash

# Best Farm Solutions Website Launcher
echo "🌱 Best Farm Solutions - Frontend Website"
echo "========================================"
echo ""
echo "Starting local web server..."
echo ""

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    echo "Using Python 3 to serve the website..."
    echo "Server will start at: http://localhost:8000"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo "========================================"
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    echo "Using Python 2 to serve the website..."
    echo "Server will start at: http://localhost:8000"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo "========================================"
    python -m SimpleHTTPServer 8000
else
    echo "❌ Python not found!"
    echo ""
    echo "Please install Python or open index.html directly in your browser."
    echo ""
    echo "Alternative: If you have Node.js installed, run:"
    echo "npx http-server"
    exit 1
fi