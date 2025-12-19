# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SpottedCli < Formula
  desc "Unofficial CLI for the Spotify API"
  homepage "https://github.com/cjavdev/spotted-cli"
  url "https://github.com/cjavdev/spotted-cli/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "a6175b85f7c3ea4a58ac6501483844dea6882d43fdce09c5e763319ce7dd4af7"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"spotted-cli")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test spotted-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "#{bin}/spotted-cli", "--version"
  end
end
