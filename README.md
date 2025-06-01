# ChromaSync OAuth Callback

This is the OAuth callback page for ChromaSync desktop application.

## Purpose
Handles OAuth redirects from Google (via Supabase) and forwards authentication tokens to the desktop app using the `chromasync://` protocol.

## Deployment
This page should be deployed to `https://auth.chromasync.app/callback`

## How it works
1. Receives OAuth tokens from Supabase (in URL hash)
2. Extracts access_token and refresh_token
3. Redirects to `chromasync://auth?access_token=...&refresh_token=...`
4. Desktop app catches this and completes authentication