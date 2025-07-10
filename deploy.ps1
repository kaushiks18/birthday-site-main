Write-Host "🚀 Building and deploying birthday site..." -ForegroundColor Green

# Build the site
Write-Host "📦 Building the site..." -ForegroundColor Yellow
npm run build

# Check if build was successful
if (!(Test-Path "out")) {
    Write-Host "❌ Build failed - out directory not found" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Build successful!" -ForegroundColor Green

# Install gh-pages if not installed
Write-Host "📦 Installing gh-pages..." -ForegroundColor Yellow
npm install -g gh-pages

# Deploy to gh-pages branch
Write-Host "🚀 Deploying to GitHub Pages..." -ForegroundColor Yellow
npx gh-pages -d out

Write-Host "✅ Deployment complete!" -ForegroundColor Green
Write-Host "🌐 Your site should be available at: https://kaushiks18.github.io/birthday-site-main" -ForegroundColor Cyan
Write-Host "⏰ It may take a few minutes to go live." -ForegroundColor Yellow
