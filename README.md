<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset=".github/brand/zoorik-logo-tagline-rings-opposite-bone.svg">
    <img alt="Zoorik. Reduce cloud cost, autonomously." src=".github/brand/zoorik-logo-tagline-rings-opposite-navy.svg" width="320">
  </picture>
</p>

# getzoorik/homebrew-tap

The Homebrew tap for `zoorikctl`.

```sh
brew tap getzoorik/tap
brew trust getzoorik/tap
brew install zoorikctl
```

A formula, not a cask, deliberately: Homebrew does not quarantine a formula's artifact, so `zoorikctl`
installs without a Gatekeeper prompt, and a formula works on Homebrew-on-Linux too.

## Changes and issues

Each zoorikctl release generates `Formula/zoorikctl.rb` and commits it here, so please do not edit it by
hand. Its `sha256` values are copied from the release's signed `checksums.txt` rather than recomputed,
and a hand edit would break the one place those digests are checked against a signature.

To change the formula or zoorikctl itself, open an issue or a pull request in
[getzoorik/zoorikctl](https://github.com/getzoorik/zoorikctl). Issues about installing with Homebrew
are welcome here.

## License

Apache-2.0, see [LICENSE](LICENSE). Copyright 2026 Zoorik Private Limited.

---

<p align="center"><sub><a href="https://zoorik.com">zoorik.com</a> · <a href="https://zoorik.com/docs">Docs</a> · <a href="https://zoorik.com/security">Security</a> · <a href="https://github.com/getzoorik">Zoorik on GitHub</a></sub></p>
<p align="center"><sub>The Zoorik, Coral and Amoeba names and logos belong to Zoorik Private Limited.</sub></p>
