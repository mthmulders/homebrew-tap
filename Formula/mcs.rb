# Generated with JReleaser 1.19.0 at 2025-07-18T14:05:43.236567276Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.7.6"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.6/mcs-0.7.6-linux-x86_64.zip"
    sha256 "04040b5794b2416dd337ccb1f52d02aa14f04bb0e7204dd16ba91becb586de9c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.6/mcs-0.7.6-osx-aarch_64.zip"
    sha256 "25c5cce3acbd91fa33174dd3dadd6f5355e6787d728784e27a3885d846d3abde"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.6/mcs-0.7.6-osx-x86_64.zip"
    sha256 "5a967466e9407cbc588730e635b335cedf35736497630873d8a9f3982aa36865"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.7.6", output
  end
end
