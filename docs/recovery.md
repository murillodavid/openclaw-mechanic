# Recovery Guide

This guide is for generic OpenClaw repair work after an update, config drift, or a broken deployment.

## Common Failure Modes

- Service does not start
- Gateway endpoint is unreachable
- UI opens but channels do not respond
- Configuration changed but did not take effect
- A dependency update changed the runtime behavior

## Recovery Sequence

1. Check the environment values you are using for this deployment.
2. Confirm the host and port are correct.
3. Confirm the config file path is the one used by the running instance.
4. Review logs for the first real error, not the downstream symptoms.
5. Re-run the smallest safe health check.
6. If a change broke the system, roll back only the change that caused the break.
7. Re-run the scan and sanity checks before you publish anything.

## If You Are Forking This Repo

- Replace all placeholder values with your own deployment values.
- Do not reuse someone else's operator memory or private network details.
- Keep your fork clean enough that a second operator can use it without inheriting your environment.

## If Secrets Were Exposed

- Rotate the affected credentials immediately.
- Remove the secret from the current tree.
- Remove it from any public history that will be published.
- Re-run the scan before you tag or push a release.
