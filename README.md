# homebrew-agentdyno

Homebrew tap for [AgentDyno](https://github.com/sauravGit/agentdyno) — the dyno
bench for local coding agents.

```sh
brew install sauravGit/agentdyno/agentdyno
```

This installs `dyno` from the [agentdyno npm package](https://www.npmjs.com/package/agentdyno).
The formula tracks published npm versions; bump `url`/`sha256` in
`Formula/agentdyno.rb` on each new release (the tarball URL and sha256 come
straight from `https://registry.npmjs.org/agentdyno/<version>`).
