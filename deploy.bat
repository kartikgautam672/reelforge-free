@echo off
echo.
echo ========================================
echo   ReelForge - Auto Deploy Setup
echo ========================================
echo.
echo Step 1: Creating GitHub Repository...
echo Opening https://github.com/new in your browser...
start https://github.com/new
echo.
echo Step 2: In the GitHub page that opened:
echo   - Repository name: reelforge-free
echo   - Make it PUBLIC
echo   - DO NOT initialize with README
echo   - Click "Create repository"
echo.
echo Step 3: After creating the repository, run these commands:
echo   git remote add origin https://github.com/YOUR_USERNAME/reelforge-free.git
echo   git branch -M main
echo   git push -u origin main
echo.
echo Step 4: Deploy to Vercel:
echo   1. Go to https://vercel.com
echo   2. Click "Import Project"
echo   3. Select your "reelforge-free" repository
echo   4. Add environment variable: OPENAI_API_KEY = your_api_key
echo   5. Click "Deploy"
echo.
echo Your app will be live at: https://reelforge-free.vercel.app
echo.
pause