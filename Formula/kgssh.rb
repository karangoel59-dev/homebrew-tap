class Kgssh < Formula
  desc "SSH alias manager and Model Context Protocol (MCP) server"
  homepage "https://github.com/karangoel59-dev/kgssh"
  url "https://github.com/karangoel59-dev/kgssh/archive/refs/tags/v2.1.2.tar.gz"
  sha256 "cb3f33a9dccbb33f443d4d4d19c4571e4c068c2bc52017dfd6ff09b897b73db3"
  license "MIT"
  head "https://github.com/karangoel59-dev/kgssh.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kgssh --version")
  end
end
