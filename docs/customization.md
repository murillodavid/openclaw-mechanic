# Customization Guide

Use this repo as a template and adapt it for your own OpenClaw instance.

## Update These Values First

- `OPENCLAW_HOST`
- `OPENCLAW_PORT`
- `OPENCLAW_BASE_URL`
- `OPENCLAW_GATEWAY_TOKEN`
- `OPENCLAW_SSH_TARGET`
- `OPENCLAW_CONFIG_PATH`

## Replace These Assumptions

- Any host-specific recovery steps
- Any network-specific hostnames
- Any account-specific channel bindings
- Any machine-specific file paths
- Any operator notes that refer to a particular personal setup

## Keep The Repo Portable

- Prefer examples over live values.
- Prefer placeholders over secrets.
- Prefer documentation that explains what the user must change.
- Prefer scripts that validate inputs instead of hardcoding one operator's environment.
