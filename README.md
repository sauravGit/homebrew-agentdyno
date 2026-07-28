# homebrew-agentdyno

Homebrew tap for [AgentDyno](https://github.com/sauravGit/agentdyno) — the dyno
bench for local coding agents.

```sh
brew install sauravGit/agentdyno/agentdyno
```

This installs `dyno` from the npm tarball attached to AgentDyno's GitHub
releases (the package is not yet on the public npm registry). The formula
tracks release tags; bump `url`/`sha256` in `Formula/agentdyno.rb` on each new
AgentDyno release.
