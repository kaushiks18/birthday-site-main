#!/bin/bash

echo "🚀 Building and deploying birthday site..."

# Build the site
echo "📦 Building the site..."
npm run build

# Check if build was successful
if [ ! -d "out" ]; then
    echo "❌ Build failed - out directory not found"
    exit 1
fi

echo "✅ Build successful!"

# Install gh-pages if not installed
if ! npm list -g gh-pages > /dev/null 2>&1; then
    echo "📦 Installing gh-pages..."
    npm install -g gh-pages
fi

# Deploy to gh-pages branch
echo "🚀 Deploying to GitHub Pages..."
npx gh-pages -d out

echo "✅ Deployment complete!"
echo "🌐 Your site should be available at: https://kaushiks18.github.io/birthday-site-main"
echo "⏰ It may take a few minutes to go live."
