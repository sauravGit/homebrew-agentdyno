class Agentdyno < Formula
  desc "Dyno bench for local coding agents: prove tool-calling works before wiring up Goose or Cline"
  homepage "https://github.com/sauravGit/agentdyno"
  url "https://github.com/sauravGit/agentdyno/releases/download/v0.6.1/agentdyno-0.6.1.tgz"
  sha256 "75b4e402587fc1fe48376d9794f67d5cb832ddb59d9410e7d338c71c0f19722b"
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
