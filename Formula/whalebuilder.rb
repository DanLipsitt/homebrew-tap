class Whalebuilder < Formula
  desc "Debian package builder using Docker"
  homepage "https://www.uhoreg.ca/programming/debian/whalebuilder"
  url "https://vcs.uhoreg.ca/git/cgit/whalebuilder/snapshot/whalebuilder-debian/0.8.zip"
  mirror "https://gitlab.com/uhoreg/whalebuilder/-/archive/debian/0.8/whalebuilder-debian-0.8.zip"
  sha256 "746220b7b9c7a6961d7d69deb7d11ffa86bd82c2f299f257ef333229f842bc42"

  depends_on "gpgme"
  depends_on "ruby"

  def install
    bin.install "#{version}/whalebuilder"
    man1.install "#{version}/whalebuilder.1"
    pkgshare.install Dir["#{version}/*.erb"], "#{version}/data.tar.gz"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test whalebuilder`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
