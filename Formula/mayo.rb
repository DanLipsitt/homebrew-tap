class Mayo < Formula
  desc "3D viewer and converter inspired by FreeCad"
  homepage "https://github.com/fougue/mayo"
  license "BSD-2-Clause"
  head "https://github.com/fougue/mayo.git"

  depends_on "opencascade"
  depends_on "qt@5"

  def install
    qt5 = Formula["qt@5"].opt_prefix
    system "#{qt5}/bin/qmake", "PREFIX=#{prefix}", "CASCADE_INC_DIR=#{Formula['opencascade'].include}"
    system "make"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test mayo`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
