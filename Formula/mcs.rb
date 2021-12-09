class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs"
  version "0.1.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.8/mcs-0.1.8-osx-x86_64.zip"
    sha256 "9269b0517b43ce2235c126ca2b0ebdbd1ef04f9e0fe4c499eb02e6d07e085bb1"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.1.8", output
  end
end
