class Odfundiff < Formula
  desc "Diff tool for ODF files"
  homepage "https://git.libreoffice.org/odfundiff"
  sha256 "b1057ddd440f3777fc18c88aaa52ebf573c481c0c2277a8f9f82e9e7150a352f"
  license "MPL-2.0"
  head "https://git.libreoffice.org/odfundiff"

  depends_on "haskell-stack" => :build

  def install
    system "stack", "install", "--local-bin-path=#{bin}"
  end

  test do
    system "stack", "test"
  end
end
