class Agentdyno < Formula
  desc "Dyno bench for local coding agents: prove tool-calling works before wiring up Goose or Cline"
  homepage "https://github.com/sauravGit/agentdyno"
  url "https://github.com/sauravGit/agentdyno/releases/download/v0.7.0/agentdyno-0.7.0.tgz"
  sha256 "7d308e0ce322408a8a78baf9031ec66d2a55090dd4c614667c674aba75541095"
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
