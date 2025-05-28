# ChromaSync Authentication Redirect Page

This repository hosts the authentication success page for ChromaSync desktop application.

## Purpose

When users authenticate with Google through ChromaSync, they are redirected to this page after successful authentication. The page:

1. Shows a success message
2. Automatically attempts to close after 5 seconds
3. Instructs users to return to the ChromaSync application

## Setup

1. Fork or create this repository on GitHub
2. Enable GitHub Pages in Settings > Pages
3. Select "Deploy from a branch" and choose "main" branch
4. Your redirect URL will be: `https://[your-username].github.io/chromasync-auth/`
5. Add this URL to your Supabase project's Site URL configuration

## Supabase Configuration

In your Supabase project dashboard:
1. Go to Authentication > URL Configuration
2. Set Site URL to your GitHub Pages URL
3. Save changes

## License

Part of the ChromaSync project.