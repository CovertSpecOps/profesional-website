# GitHub Pages Deployment Guide

## Step 1: Create GitHub Repository

1. Go to [GitHub.com](https://github.com) and sign in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Repository name: `personal-website` (or any name you prefer)
5. Make sure it's set to **Public**
6. **DO NOT** initialize with README, .gitignore, or license (we already have these)
7. Click "Create repository"

## Step 2: Push Your Code to GitHub

After creating the repository, GitHub will show you commands. Use these instead:

```bash
# Add the remote repository (replace USERNAME with your GitHub username)
git remote add origin https://github.com/USERNAME/personal-website.git

# Push your code to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on **Settings** tab
3. Scroll down to **Pages** section (left sidebar)
4. Under "Source", select **Deploy from a branch**
5. Choose **main** branch
6. Choose **/ (root)** folder
7. Click **Save**

## Step 4: Access Your Live Website

After 2-3 minutes, your website will be live at:
```
https://USERNAME.github.io/personal-website
```

## Troubleshooting

- **404 Error**: Wait 5-10 minutes for GitHub Pages to build
- **Changes not showing**: Clear browser cache or wait for GitHub to rebuild
- **Repository not found**: Make sure repository is public

## Future Updates

To update your website:
1. Make changes to your files locally
2. Commit changes: `git add . && git commit -m "Update description"`
3. Push to GitHub: `git push`
4. Changes will appear on your live site in 2-3 minutes

## Custom Domain (Optional)

To use your own domain (like aaronsalazar.com):
1. Buy a domain from any registrar
2. In GitHub Pages settings, add your custom domain
3. Update your domain's DNS settings to point to GitHub Pages
4. GitHub will automatically provide HTTPS

## Cost

- GitHub Pages: **FREE**
- Custom domain: ~$10-15/year (optional)
- Everything else: **FREE**
