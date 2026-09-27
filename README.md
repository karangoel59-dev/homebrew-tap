# karangoel59-dev/homebrew-tap

Homebrew formulae for [kgssh](https://github.com/karangoel59-dev/kgssh) and
[kgmail](https://github.com/karangoel59-dev/kgmail).

## Install

```sh
brew tap karangoel59-dev/tap
brew install kgssh
brew install kgmail
```

Or in one step:

```sh
brew install karangoel59-dev/tap/kgssh
```

## Updating a formula

Bump `url` to the new tag and `sha256` to match:

```sh
curl -sL -o /tmp/src.tar.gz "https://github.com/karangoel59-dev/kgssh/archive/refs/tags/vX.Y.Z.tar.gz"
shasum -a 256 /tmp/src.tar.gz
```
