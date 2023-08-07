# Generated with JReleaser 1.7.0 at 2023-08-07T18:38:22.759395135Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.4.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.4.1/mcs-0.4.1-linux-x86_64.zip"
    sha256 "39ad45af5b4592f7c9e87634620e34e32ded0aa3302469595ec092a0af0e1679"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.4.1/mcs-0.4.1-osx-aarch_64.zip"
    sha256 "438ade4d1f63fefb1f9e40a33b5ad06ef2c64b86a3b053aa9718a56f90393397"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.4.1/mcs-0.4.1-osx-x86_64.zip"
    sha256 "62d79cf57495a95cb873104ee99b258e56a196688b51306a948b650fc5e707e6"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.4.1", output
  end
end
