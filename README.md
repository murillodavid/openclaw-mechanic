# OpenClaw Mechanic

OpenClaw Mechanic is a fork-friendly public repair toolkit for OpenClaw instances.

Use this repo as a starting point when an OpenClaw deployment needs recovery after an update, config drift, broken channels, or host-side changes. The goal is to give other operators a clean base they can clone, fork, and customize for their own environment without inheriting someone else's private memory, account bindings, network details, or runtime state.

## What This Repo Is For

- Public repair and recovery guidance
- Safe helper scripts and checklists
- Generic examples for local customization
- Forkable starting point for another OpenClaw instance

## What This Repo Is Not

- A copy of any private operator environment
- A place for secrets, tokens, private keys, or session state
- A mirror of any live host, tailnet, or admin account
- A replacement for the running OpenClaw product

## Start Here

1. Read [`docs/quickstart.md`](docs/quickstart.md)
2. Read [`docs/security-hygiene.md`](docs/security-hygiene.md)
3. Copy [`templates/openclaw.env.example`](templates/openclaw.env.example) to your local `.env`
4. Customize [`templates/openclaw.config.example.json`](templates/openclaw.config.example.json) for your own deployment
5. Run `bash scripts/scan-secrets.sh`
6. Run `bash scripts/check-public-repo.sh`

## Forking Guidance

Fork this repo and customize it for your own OpenClaw instance. Do not reuse someone else's private hostnames, IP addresses, tokens, or operator memory. Treat every example here as a template that needs your own values before use.

## Repository Layout

- `docs/` for public setup, recovery, and hygiene notes
- `runbooks/` for repeatable recovery flows
- `scripts/` for local validation and scanning helpers
- `templates/` for environment and config examples

## License

MIT. See [`LICENSE`](LICENSE).
