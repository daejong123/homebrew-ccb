# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ccb < Formula
  desc "Copy current branch in terminal"
  version "1.0.0"
  homepage "https://github.com/daejong123/go-ccb"
  url "https://github.com/daejong123/go-ccb/releases/download/1.0.0/ccb_1.0.0.tar.gz"
  sha256 "92426e82421a6c27857ad00da6b228645d5e2960c46701446bbe51e22dc19798"
  license "MIT"

  def install
    bin.install "ccb"
  end
  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ccb`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
