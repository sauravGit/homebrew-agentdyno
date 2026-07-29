class Agentdyno < Formula
  desc "Dyno bench for local coding agents: prove tool-calling works before wiring up Goose or Cline"
  homepage "https://github.com/sauravGit/agentdyno"
  url "https://github.com/sauravGit/agentdyno/releases/download/v0.7.1/agentdyno-0.7.1.tgz"
  sha256 "c8e6f5cb8c5b575d51f12c38c597866094abbdf145b9cc136094eb41a14214f7"
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
