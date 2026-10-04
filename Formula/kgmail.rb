class Kgmail < Formula
  desc "Multi-account email CLI and Model Context Protocol (MCP) server"
  homepage "https://github.com/karangoel59-dev/kgmail"
  url "https://github.com/karangoel59-dev/kgmail/archive/refs/tags/v2.5.0.tar.gz"
  sha256 "6804909bfc10aba209465f2c68bcfc26a7925b98a332d374be7d3edaf0ba0f56"
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
