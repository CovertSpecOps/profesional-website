#!/bin/bash

# Simple deployment script for personal website
# Make this file executable with: chmod +x deploy.sh

echo "🚀 Personal Website Deployment Script"
echo "======================================"

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the website directory."
    exit 1
fi

echo "✅ Found website files"

# Option 1: Local development server
echo ""
echo "Choose deployment option:"
echo "1) Start local development server (Python)"
echo "2) Start local development server (Node.js)"
echo "3) Deploy to GitHub Pages (requires git setup)"
echo "4) Show deployment instructions"
echo ""

read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "🌐 Starting Python development server..."
        echo "Visit: http://localhost:8000"
        echo "Press Ctrl+C to stop"
        python3 -m http.server 8000
        ;;
    2)
        echo "🌐 Starting Node.js development server..."
        if command -v npx &> /dev/null; then
            echo "Visit: http://localhost:8080"
            echo "Press Ctrl+C to stop"
            npx http-server -p 8080
        else
            echo "❌ Node.js/npx not found. Please install Node.js first."
            exit 1
        fi
        ;;
    3)
        echo "📦 Preparing for GitHub Pages deployment..."
        
        # Check if git is initialized
        if [ ! -d ".git" ]; then
            echo "Initializing git repository..."
            git init
            git add .
            git commit -m "Initial commit: Personal website"
        fi
        
        echo "✅ Git repository ready"
        echo ""
        echo "Next steps:"
        echo "1. Create a repository on GitHub"
        echo "2. Add remote: git remote add origin https://github.com/yourusername/your-repo.git"
        echo "3. Push: git push -u origin main"
        echo "4. Enable GitHub Pages in repository settings"
        ;;
    4)
        echo "📋 Deployment Options:"
        echo ""
        echo "🆓 FREE OPTIONS:"
        echo "• GitHub Pages: Push to GitHub, enable Pages in settings"
        echo "• Netlify: Drag & drop folder at netlify.com"
        echo "• Vercel: Import from GitHub at vercel.com"
        echo "• Surge.sh: npm install -g surge && surge"
        echo ""
        echo "💰 PAID OPTIONS:"
        echo "• Custom domain + hosting (DigitalOcean, AWS, etc.)"
        echo "• Professional hosting services"
        echo ""
        echo "🔧 REQUIREMENTS:"
        echo "• All files in this directory"
        echo "• Modern web browser support"
        echo "• HTTPS recommended for production"
        ;;
    *)
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac
