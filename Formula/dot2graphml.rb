class Dot2graphml < Formula
  desc "This package contains a converter from DOT format used by GraphViz (http://graphviz.org) to variant of GraphML (http:/graphml.graphdrawing.org) used by yEd (http:/www.yworks.comen/products_yed_about.html)."
  homepage "http://hackage.haskell.org/package/dot2graphml"
  url "http://hackage.haskell.org/package/dot2graphml-0.1.0.2/dot2graphml-0.1.0.2.tar.gz"
  version "0.1.0.2"
  sha256 "31e20e5aa13bd4735b7f21078dbcf8703e147b008805712ac8f13547c4e58ebb"

  livecheck do
    url :stable
    strategy :hackage
  end

  depends_on "cabal-install" => :build
  depends_on "ghc" => :build

  def install
    system "cabal", "v2-update"
    system "cabal", "v2-install", *std_cabal_v2_args
  end

  test do
    assert_match /<\/graphml>/, shell_output("#{bin}/dot2graphml <<<'digraph g {}'")
  end
end
