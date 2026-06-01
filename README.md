# OpenClaw Mechanic

OpenClaw Mechanic is a public, open-source repair toolkit for OpenClaw deployments.

It gives operators a clean, forkable starting point for recovery, hardening, and post-change cleanup when an instance drifts after an update, loses a channel, picks up a bad config change, or needs a safe public release checklist.

## Best Use Cases

Use this repo when you need to:

- Recover an OpenClaw instance after config drift or a bad update
- Prepare a deployment for public release without leaking private state
- Create a repeatable checklist for another operator to follow
- Start from a safe baseline instead of copying a live machine or account setup

## Why It Helps

This repo saves time by replacing ad hoc recovery with a repeatable flow:

- You do not have to rebuild the same safety checks from scratch
- You do not have to rediscover which values are safe to publish
- You get templates instead of live hostnames, tokens, or machine-specific paths
- You can hand the repo to another operator without inheriting your private environment

In practice, that means less time spent cleaning up accidental leaks, less time re-deriving recovery steps, and less time figuring out what should stay local versus what can be shared publicly.

## What This Repo Contains

- Public recovery and hygiene docs
- Safe helper scripts for scanning and release checks
- Generic environment and config templates
- A release checklist for fork-safe publication

## What This Repo Does Not Contain

- Secrets, tokens, private keys, or browser/session state
- Private IPs, Tailscale hostnames, or local recovery details
- Machine-specific paths or operator memory
- Live account bindings or private admin endpoints

## Quick Start

1. Clone or fork this repo.
2. Read [`docs/quickstart.md`](docs/quickstart.md).
3. Read [`docs/security-hygiene.md`](docs/security-hygiene.md).
4. Copy [`templates/openclaw.env.example`](templates/openclaw.env.example) to your local `.env`.
5. Customize [`templates/openclaw.config.example.json`](templates/openclaw.config.example.json) for your own deployment.
6. Run `bash scripts/scan-secrets.sh`.
7. Run `bash scripts/check-public-repo.sh`.

## Recommended Workflow

1. Fork this repo for your own OpenClaw instance.
2. Replace every placeholder with your own hostnames, ports, tokens, and paths.
3. Verify the repo is still clean with the safety scripts.
4. Use the recovery guide when a deployment breaks or changes unexpectedly.
5. Run the release checklist before publishing your fork.

## What To Customize

- `OPENCLAW_HOST`
- `OPENCLAW_PORT`
- `OPENCLAW_BASE_URL`
- `OPENCLAW_GATEWAY_TOKEN`
- `OPENCLAW_SSH_TARGET`
- `OPENCLAW_CONFIG_PATH`

## Safety Rules

- Do not copy live `.env` values into the repo.
- Do not copy private hostnames, private IPs, or Tailscale-only names.
- Do not commit session files, logs with sensitive data, or machine-specific paths.
- Always run the scan scripts before you publish a fork.

## Repository Layout

- `docs/` for public setup, recovery, and hygiene notes
- `runbooks/` for repeatable release flows
- `scripts/` for validation and safety scanning
- `templates/` for environment and config examples

## License

MIT. See [`LICENSE`](LICENSE).
