# Mintlify Starter Kit

Click on `Use this template` to copy the Mintlify starter kit. The starter kit contains examples including

- Guide pages
- Navigation
- Customizations
- API Reference pages
- Use of popular components

### Development

Install the [Mintlify CLI](https://www.npmjs.com/package/mintlify) to preview the documentation changes locally. To install, use the following command

```
npm i -g mintlify
```

Run the following command at the root of your documentation (where mint.json is)

```
mintlify dev
```

### Publishing Changes

Install our Github App to autopropagate changes from youre repo to your deployment. Changes will be deployed to production automatically after pushing to the default branch. Find the link to install on your dashboard.

#### Syncing Docs

**Pulling Updates (from docs repo to main repo):**

Use the sync script to pull docs updates. This only commits files that actually changed in `docs/`:

```bash
./decoda/scripts/sync_docs.sh
```

**Pushing Updates (from main repo to docs repo):**

Use the push script to sync your local docs changes to the docs repo:

```bash
./decoda/scripts/push_docs.sh
```

Or with history preservation:

```bash
./decoda/scripts/push_docs.sh --preserve-history
```

#### Troubleshooting

- Mintlify dev isn't running - Run `mintlify install` it'll re-install dependencies.
- Page loads as a 404 - Make sure you are running in a folder with `mint.json`
