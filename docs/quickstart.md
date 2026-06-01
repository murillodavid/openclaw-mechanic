# Quickstart

Use this repo as a starting point for your own OpenClaw repair toolkit.

## Before You Customize

- Fork or clone this repo into your own workspace.
- Replace every placeholder in `.env.example` with your own deployment values.
- Replace every placeholder in `templates/openclaw.config.example.json` with your own config values.
- Review the docs for any wording that still assumes someone else's environment.

## Basic Workflow

1. Customize the templates for your own OpenClaw instance.
2. Run `bash scripts/scan-secrets.sh`.
3. Run `bash scripts/check-public-repo.sh`.
4. Make your local edits until the scan is clean.
5. Commit the sanitized version.

## What To Change For Your Instance

- Hostnames
- Ports
- Admin endpoints
- Auth tokens
- SSH targets
- Channel bindings
- Model names if your deployment differs

## What Not To Copy From Another Operator

- Private IPs
- Tailscale hostnames
- Usernames and machine names
- Account-specific memory
- Session data
- Hardcoded secrets
