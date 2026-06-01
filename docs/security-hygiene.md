# Security Hygiene

This repo is intentionally public-safe. Keep it that way when you customize it.

## Never Commit

- API keys
- Passwords
- Private keys
- OAuth tokens
- Browser sessions
- `.env` files with real values
- Database URLs with credentials
- Internal-only hostnames and IP addresses
- SSH config entries that expose your personal access path
- Logs that contain real user data or secret material

## Before Every Public Release

1. Run `bash scripts/scan-secrets.sh`
2. Review any flagged files manually
3. Replace sensitive values with placeholders
4. Confirm that examples use dummy values only
5. Verify `.gitignore` still blocks local-only state

## Good Patterns

- Use `your-host.example.com` instead of a real hostname
- Use `replace_me` for required secrets
- Use `/path/to/your/file` for local paths
- Use comments to explain where the user must customize the repo

## Bad Patterns

- Copying a live `.env` file
- Copying a private host mapping
- Copying operator memory or account-specific notes
- Copying raw logs into docs or examples
