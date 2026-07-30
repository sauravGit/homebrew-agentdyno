class Agentdyno < Formula
  desc "Dyno bench for local coding agents: prove tool-calling works before wiring up Goose or Cline"
  homepage "https://github.com/sauravGit/agentdyno"
  url "https://registry.npmjs.org/agentdyno/-/agentdyno-0.8.0.tgz"
  sha256 "839d1b95528d4c0d893426e07e57b50b8c9073098485e1f1b0c0fd049b387333"
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
