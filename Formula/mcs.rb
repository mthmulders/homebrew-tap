# Generated with JReleaser 1.6.0 at 2023-05-07T13:15:34.15504138Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.3.4"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.4/mcs-0.3.4-linux-x86_64.zip"
    sha256 "1a19ac6cab30b68cbdbf7cc68231d98c2e8f8650b9525eecc9c633d826a079f2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.4/mcs-0.3.4-osx-aarch_64.zip"
    sha256 "061a73cac369a844f89fd28b0dc158cd6b55e480d291e6ca7b734a1d9f059ce9"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.4/mcs-0.3.4-osx-x86_64.zip"
    sha256 "a47e418aa040a7dc5e2f99f1d5c9407cf2837f2c76fc5d56b63dba8f79dac6b7"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.3.4", output
  end
end
