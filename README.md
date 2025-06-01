# ChromaSync Authentication Portal

This repository hosts the OAuth authentication redirect handler for the ChromaSync desktop application on Cloudflare Pages.

## URLs

- **Production**: https://auth.chromasync.app
- **OAuth Callback**: https://auth.chromasync.app/auth/callback

## How It Works

1. ChromaSync desktop app initiates Google OAuth flow
2. After authentication, Supabase redirects to this page with tokens in the URL hash
3. This page extracts the tokens and redirects to `chromasync://auth/callback` (desktop deep link)
4. ChromaSync desktop app receives the tokens and completes authentication

## Files

- `/index.html` - Landing page and root redirect handler
- `/auth/callback/index.html` - OAuth callback handler that redirects to desktop app

## Deployment

This repository is automatically deployed to Cloudflare Pages on every push to the main branch.

## Testing

To test the OAuth redirect locally:
1. Open `/auth/callback/index.html` in a browser
2. Add test hash: `#access_token=test&token_type=bearer`
3. Verify it attempts to redirect to `chromasync://auth/callback#access_token=test`

## Security

- No tokens are stored or logged
- Page only extracts and forwards OAuth data
- HTTPS enforced by Cloudflare
- No external dependencies or tracking

## Related

- Main ChromaSync repository: [chromasync-source-code](https://github.com/Tw1sts/chromasync-source-code)
- Desktop app uses Electron with Supabase authentication