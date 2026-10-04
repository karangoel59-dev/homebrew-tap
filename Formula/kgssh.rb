class Kgssh < Formula
  desc "SSH alias manager and Model Context Protocol (MCP) server"
  homepage "https://github.com/karangoel59-dev/kgssh"
  url "https://github.com/karangoel59-dev/kgssh/archive/refs/tags/v2.1.3.tar.gz"
  sha256 "92ac95f52730b658c3bf968d06966141d89cb41cc5d67e5b2203a5b8e498109b"
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
