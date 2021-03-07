class Egypt < Formula
  desc "Tool for making call graphs"
  homepage "https://www.gson.org/egypt/"
  url "https://www.gson.org/egypt/download/egypt-1.10.tar.gz"
  sha256 "b5586ad65a491c9cb35252fd45ebbd22b926fd3cc1947513a4dfa58fb6911c64"
  license any_of: ["Artistic-1.0-Perl", "GPL-1.0-or-later"]
  livecheck do
    url "http://www.gson.org/egypt/download"
    regex(/href=.*?egypt[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  depends_on "graphviz"
  uses_from_macos "perl"

  def install
    system "perl", "Makefile.PL", "INSTALL_BASE=#{libexec}"
    system "make"
    system "make", "install"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match /digraph callgraph {[^}]}.*/, shell_output("#{bin}/egypt </dev/null")
  end
end
