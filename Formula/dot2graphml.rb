# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require "language/haskell"

class Dot2graphml < Formula
    include Language::Haskell::Cabal
  desc "This package contains a converter from DOT format used by GraphViz (http://graphviz.org) to variant of GraphML (http:/graphml.graphdrawing.org) used by yEd (http:/www.yworks.comen/products_yed_about.html)."
  homepage "http://hackage.haskell.org/package/dot2graphml"
  url "http://hackage.haskell.org/package/dot2graphml-0.1.0.2/dot2graphml-0.1.0.2.tar.gz"
  version "0.1.0.2"
  sha256 ""

  depends_on "cabal-install" => :build
  depends_on "ghc" => :build

  def install
    cabal_sandbox do
      install_cabal_package
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test dot2graphml`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
