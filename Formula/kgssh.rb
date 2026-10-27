class Kgssh < Formula
  desc "SSH alias manager and Model Context Protocol (MCP) server"
  homepage "https://github.com/karangoel59-dev/kgssh"
  url "https://github.com/karangoel59-dev/kgssh/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "459b6bcfdff2c13be36eb3cb602b21a722732eee182e310dd4bf2eadc4f22e1f"
  license "MIT"
  head "https://github.com/karangoel59-dev/kgssh.git", branch: "master"

  depends_on "go" => :build

  def install
    # std_go_args already adds -s -w unless HOMEBREW_DEBUG_SYMBOLS is set.
    system "go", "build", *std_go_args(ldflags: "-X main.version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kgssh --version")
  end
end
