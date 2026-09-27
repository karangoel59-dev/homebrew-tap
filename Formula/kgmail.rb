class Kgmail < Formula
  desc "Multi-account email CLI and Model Context Protocol (MCP) server"
  homepage "https://github.com/karangoel59-dev/kgmail"
  url "https://github.com/karangoel59-dev/kgmail/archive/refs/tags/v2.4.0.tar.gz"
  sha256 "2a80c336e9d1048cf6f3333a3396c9a8489ccb9928adca475e1901c9dc86e242"
  license "MIT"
  head "https://github.com/karangoel59-dev/kgmail.git", branch: "main"

  depends_on "go" => :build

  def install
    # kgmail's version is a const (can't be set via -X); std_go_args already
    # adds -s -w unless HOMEBREW_DEBUG_SYMBOLS is set.
    system "go", "build", *std_go_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kgmail version")
  end
end
