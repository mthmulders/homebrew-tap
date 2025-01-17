# Generated with JReleaser 1.16.0 at 2025-01-17T19:36:47.125149498Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.7.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.2/mcs-0.7.2-linux-x86_64.zip"
    sha256 "d09b43823a08304d94b2d207d78d8a6e2583979ef38781edec4266b13ba5bf0e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.2/mcs-0.7.2-osx-aarch_64.zip"
    sha256 "6b16761bdc37ea9be885696baaf2306a511d83cb95bf95232bc9f931e0153ac0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.2/mcs-0.7.2-osx-x86_64.zip"
    sha256 "970942638c8d330bcec881eef901152f3033abe094eb27f6df1596b053a0e701"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.7.2", output
  end
end
