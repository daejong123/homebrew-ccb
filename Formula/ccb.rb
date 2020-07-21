# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ccb < Formula
  desc "copy current branch in terminal"
  homepage "https://github.com/daejong123/homebrew-ccb"
  url "https://github.com/daejong123/homebrew-ccb/raw/master/ccb_1.0.0.tar.gz"
  sha256 "88d0aca55ba6f7195222fa204d54132e2c74ce85b45d2f833e990a2e93b7b920"
  license "MIT"

  # depends_on "cmake" => :build

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
