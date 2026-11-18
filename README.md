# Apervia Homebrew tap

The [Homebrew](https://brew.sh) cask of the Apervia CLI, for macOS and Linux.

```sh
brew install apervia/tap/apervia
```

The cask installs `apervia`, and `apv` as a short name for it. To get a new
release:

```sh
brew upgrade apervia
```

The cask downloads each release from `downloads.apervia.ai`. The macOS
binaries are signed with a Developer ID and notarized by Apple.

This repository holds only the cask. The release workflow of the CLI writes
`Casks/apervia.rb` for each release. Do not edit it by hand.
