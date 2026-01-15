class SpottedCli < Formula
  desc "Unofficial CLI for the Spotify API"
  homepage "https://github.com/cjavdev/spotted-cli"
  url "https://github.com/cjavdev/spotted-cli/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "a6175b85f7c3ea4a58ac6501483844dea6882d43fdce09c5e763319ce7dd4af7"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"spotted"), "./cmd/spotted"
  end

  test do
    system "#{bin}/spotted", "--version"
  end
end
