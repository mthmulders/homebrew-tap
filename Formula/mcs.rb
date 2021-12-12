class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs"
  version "0.1.12"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.12/mcs-0.1.12-osx-x86_64.zip"
    sha256 "72e262662c75a4f093b02ac3e69aeffcb25be7a21595ffc2632f156966fb7e04"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.1.12", output
  end
end
