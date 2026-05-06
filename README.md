# homebrew-tap

Homebrew formulae for [Syndeo-AI](https://github.com/Syndeo-AI). The single `resyndeo` formula installs the macOS binary that bootstraps a local k3d cluster and runs the in-cluster daemon.

## Install

```bash
brew install Syndeo-AI/tap/resyndeo
resyndeo --help
```

Depends on `helm` and `k3d` (Homebrew installs both automatically).

## How the formula gets here

GoReleaser commits `Formula/resyndeo.rb` to this repo on every release of [`Syndeo-AI/terminal-ui`](https://github.com/Syndeo-AI/terminal-ui). Binaries are downloaded from a public-read S3 releases bucket provisioned by `Syndeo-AI/infra`. No manual formula authoring is required — see [`terminal-ui/README.md`](https://github.com/Syndeo-AI/terminal-ui/blob/main/README.md) for the release pipeline.

## See also

- [`Syndeo-AI/terminal-ui`](https://github.com/Syndeo-AI/terminal-ui) — the binary's source.
- Super-repo [`DESIGN_DOC.md`](https://github.com/Syndeo-AI/resyndeo/blob/main/DESIGN_DOC.md) — full architecture.
