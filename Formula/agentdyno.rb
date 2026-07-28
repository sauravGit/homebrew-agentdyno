class Agentdyno < Formula
  desc "Dyno bench for local coding agents: prove tool-calling works before wiring up Goose or Cline"
  homepage "https://github.com/sauravGit/agentdyno"
  url "https://github.com/sauravGit/agentdyno/releases/download/v0.6.0/agentdyno-0.6.0.tgz"
  sha256 "66fe5c4af085fccd1ce0ba1da8f8ac356916f47611d4bc428a47a8b3f6a71617"
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
