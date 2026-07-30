class Agentdyno < Formula
  desc "Dyno bench for local coding agents: prove tool-calling works before wiring up Goose or Cline"
  homepage "https://github.com/sauravGit/agentdyno"
  url "https://registry.npmjs.org/agentdyno/-/agentdyno-0.8.1.tgz"
  sha256 "02913779116ddf9878e4fcd25a2d87044380975aa261de6b1a4e6540ec6abf20"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dyno --version")
  end
end
