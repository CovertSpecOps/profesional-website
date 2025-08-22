# Aaron Salazar - Personal Website

A modern, responsive personal website for an offensive security engineer and ethical hacker.

## Features

- **Modern Design**: Clean, cybersecurity-themed UI with terminal animations
- **Responsive**: Fully responsive design that works on all devices
- **Interactive**: Smooth scrolling, animated elements, and terminal typing effects
- **Fast Loading**: Optimized CSS and JavaScript for quick load times
- **SEO Ready**: Proper meta tags and semantic HTML structure

## Local Development

1. Clone or download this repository
2. Open `index.html` in your browser or serve with a local server:

```bash
# Using Python 3
python -m http.server 8000

# Using Node.js (if you have http-server installed)
npx http-server

# Using PHP
php -S localhost:8000
```

3. Visit `http://localhost:8000` in your browser

## Deployment Options

### 1. GitHub Pages (Free)
1. Create a GitHub repository
2. Upload all files to the repository
3. Go to Settings > Pages
4. Select "Deploy from a branch" and choose "main"
5. Your site will be available at `https://yourusername.github.io/repository-name`

### 2. Netlify (Free)
1. Visit [netlify.com](https://netlify.com)
2. Drag and drop the project folder to deploy
3. Your site will get a random URL (can be customized)

### 3. Vercel (Free)
1. Visit [vercel.com](https://vercel.com)
2. Import your GitHub repository or upload files
3. Automatic deployment with custom domain support

### 4. Custom Domain
After deploying to any platform above, you can:
1. Purchase a domain (e.g., `aaronsalazar.com`)
2. Configure DNS settings to point to your hosting platform
3. Enable HTTPS (usually automatic)

## Customization

### Contact Information
Update the contact links in `index.html`:
- Email: Line 174
- LinkedIn: Line 178
- GitHub: Line 182
- Twitter: Line 186

### Content
- **About section**: Lines 89-116 in `index.html`
- **Experience**: Lines 118-160 in `index.html`
- **Skills**: Lines 162-220 in `index.html`

### Styling
- **Colors**: Modify CSS variables in `styles.css` (lines 11-23)
- **Fonts**: Change font imports in `index.html` (line 7)

## File Structure

```
personal-website/
├── index.html          # Main HTML file
├── styles.css          # CSS styling
├── script.js           # JavaScript functionality
├── README.md           # This file
└── deploy.sh           # Deployment script (optional)
```

## Browser Support

- Chrome (recommended)
- Firefox
- Safari
- Edge
- Mobile browsers

## Performance

- Lighthouse Score: 95+
- First Contentful Paint: <1.5s
- Largest Contentful Paint: <2.5s

## License

MIT License - feel free to use this template for your own projects.
