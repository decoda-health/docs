# Service Disruption Banner

A site-wide banner shown at the top of every page in `console`. Configured via environment variables.

## Environment variables

| Variable | Values | Purpose |
| --- | --- | --- |
| `NEXT_PUBLIC_SERVICE_BANNER_ENABLED` | `true`, `1`, anything else | Master on/off. Anything other than `true`/`1` (case-insensitive) is treated as off. |
| `NEXT_PUBLIC_SERVICE_BANNER_MESSAGE` | free text | The message shown. If empty, the banner does not render even when enabled. |
| `NEXT_PUBLIC_SERVICE_BANNER_SEVERITY` | `warning` (default), `destructive` | Visual style. `warning` is yellow. `destructive` is red. Any other value falls back to `warning`. |

## Production

The three env vars live on the console deployment in the `decoda-health/infrastructure` repo (`deployments/console/deployment.yaml` for prod, `deployments/console-staging/deployment.yaml` for staging). The container entrypoint reads them at start and writes them into `public/runtime-env.js`, so a **rolling restart picks up changes — no rebuild required**.

### Flipping the banner — `service-banner` GitHub Action

The supported way to turn the banner on/off in prod or staging is the `service-banner` workflow:

1. Open [Actions → service-banner](../.github/workflows/service-banner.yml) in this repo.
2. Click **Run workflow**, leave the branch as `main`, and fill in:
   - `action`: `on` or `off`
   - `message`: the banner copy (used when `action=on`)
   - `severity`: `warning` (yellow) or `destructive` (red)
   - `target`: `staging` or `production`
3. The workflow updates the three env values in the infrastructure repo and pushes the commit. ArgoCD syncs the change and rolls the pods.

End-to-end click-to-visible: ~2–4 minutes (workflow <1 min, ArgoCD sync 1–3 min). Hard-reload the browser to bypass any cached `runtime-env.js`.

## Local development

Create `console/public/runtime-env.js` (gitignored):

```js
window.RUNTIME_ENV = {
  NEXT_PUBLIC_SERVICE_BANNER_ENABLED: "true",
  NEXT_PUBLIC_SERVICE_BANNER_MESSAGE: "Test banner",
  NEXT_PUBLIC_SERVICE_BANNER_SEVERITY: "warning"
};
```

Restart `pnpm dev` and hard-reload the browser.
