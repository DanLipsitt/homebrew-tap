class Aactivator < Formula
  include Language::Python::Virtualenv

  desc "Automatically source and unsource a project's environment"
  homepage ""
  url "https://github.com/Yelp/aactivator/archive/v1.0.1.tar.gz"
  sha256 "d56d1a0817e498004e9c17f1ac0d9de55a1415b800403ca08a7d72d4bfa47977"
  depends_on :python if MacOS.version <= :snow_leopard

  def install
    virtualenv_install_with_resources
  end

  def caveats; <<-EOS.undent
    To add aactivator to your shell, add the following line to your .bashrc or .zshrc:

       eval "$(aactivator init)"

    More information: https://github.com/Yelp/aactivator
    EOS
  end

  test do
    assert_match "aactivator", shell_output("#{bin}/aactivator -h")
  end
end
