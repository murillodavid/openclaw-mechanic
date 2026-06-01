# Release Checklist

Use this checklist before you publish a fork of this repo.

## Required Checks

- `bash scripts/scan-secrets.sh`
- `bash scripts/check-public-repo.sh`
- Manual review of docs and templates
- Manual review of any generated files

## Required Cleanup

- Remove private IPs
- Remove private hostnames
- Remove live tokens
- Remove session state
- Remove personal memory
- Remove machine-specific paths

## Publish Rule

Do not push a public release until the repo is safe for another operator to fork and customize for their own OpenClaw deployment.
