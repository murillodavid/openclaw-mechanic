# OpenClaw Mechanic Agent Instructions

Treat this repository as a public, forkable repair toolkit for OpenClaw.

## Rules

- Keep the repo generic and portable.
- Do not add secrets, tokens, private keys, cookies, browser sessions, or live trust material.
- Do not add personal memory, account-specific notes, private hostnames, private IPs, or machine-specific runtime state.
- Prefer placeholders and templates over real values.
- Keep docs and scripts safe for another operator to fork and customize for their own deployment.
- Verify public-safety with `bash scripts/scan-secrets.sh` and `bash scripts/check-public-repo.sh` before publishing.

## Writing Style

- Use direct, practical language.
- Favor short runbooks and concrete recovery steps.
- If a setting must vary per deployment, make that explicit with placeholders.
