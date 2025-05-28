#!/bin/bash

# Replace YOUR_USERNAME with your actual GitHub username
GITHUB_USERNAME="YOUR_USERNAME"

echo "Setting up ChromaSync Auth GitHub Pages..."
echo "========================================"

# Add the remote origin
git remote add origin https://github.com/$GITHUB_USERNAME/chromasync-auth.git

# Rename branch to main if needed
git branch -M main

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Code pushed to GitHub!"
echo ""
echo "Next steps:"
echo "1. Go to: https://github.com/$GITHUB_USERNAME/chromasync-auth/settings/pages"
echo "2. Under 'Source', select 'Deploy from a branch'"
echo "3. Select 'main' branch and '/ (root)' folder"
echo "4. Click 'Save'"
echo ""
echo "Your GitHub Pages URL will be:"
echo "https://$GITHUB_USERNAME.github.io/chromasync-auth/"
echo ""
echo "Add this URL to Supabase Dashboard under Authentication > URL Configuration > Site URL"