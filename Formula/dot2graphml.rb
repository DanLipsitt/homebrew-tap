class Dot2graphml < Formula
  desc "Converter from GraphViz DOT format to yEd variant of GraphML"
  homepage "https://hackage.haskell.org/package/dot2graphml"
  url "https://hackage.haskell.org/package/dot2graphml-0.1.0.2/dot2graphml-0.1.0.2.tar.gz"
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
    assert_match %r{</graphml>}, shell_output("#{bin}/dot2graphml <<<'digraph g {}'")
  end
end
