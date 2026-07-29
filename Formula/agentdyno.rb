class Agentdyno < Formula
  desc "Dyno bench for local coding agents: prove tool-calling works before wiring up Goose or Cline"
  homepage "https://github.com/sauravGit/agentdyno"
  url "https://registry.npmjs.org/agentdyno/-/agentdyno-0.7.4.tgz"
  sha256 "1bcc2e438daeb2e6aa2324be3833c9345e56ac5a14e03c77bdacbefad016b923"
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
