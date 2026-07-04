# Threatcl Homebrew Tap (deprecated)

> [!IMPORTANT]
> **This tap is deprecated.** `threatcl` lives in
> [homebrew-core](https://formulae.brew.sh/formula/threatcl) now — install it
> with plain:
>
> ```
> brew install threatcl
> ```

## Already installed from this tap?

The formula has been migrated to homebrew-core (via this tap's
`tap_migrations.json`), so a normal

```
brew update && brew upgrade
```

moves your installation across automatically. After that, remove the tap:

```
brew untap threatcl/repo
```

## Why

The homebrew-core formula is bumped automatically by Homebrew's CI within
hours of each threatcl release, ships bottles for all current macOS and Linux
platforms, and those bottles carry build-provenance attestations. This
manually-updated tap lagged behind releases and offered a single bottle
platform — homebrew-core is strictly better on every axis.

This repository will be archived once migration has settled.
