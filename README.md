# bdtren/homebrew-yourai

Homebrew tap for [yourai](https://yourai.bdtren.com), a CLI that builds and runs
your own local AI.

```sh
brew tap bdtren/yourai
brew trust --tap bdtren/yourai
brew install yourai
yourai doctor
```

Homebrew 7 and later refuses to load formulae from taps you have not trusted, so run
`brew trust` once after tapping. Older Homebrew versions skip that step.

Update with `brew upgrade yourai`, remove with `brew uninstall yourai`.

The formula in `Formula/yourai.rb` is updated automatically for each release of
[bdtren/yourai-cli](https://github.com/bdtren/yourai-cli). It covers macOS and
Linux (Apple Silicon, Intel, and ARM64).
