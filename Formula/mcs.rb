# Generated with JReleaser 0.10.0 at 2022-02-20T12:19:48.835094445Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs/"
  version "0.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.2/mcs-0.2-linux-x86_64.zip"
    sha256 "201a5afe15825b68c0a20fc88a9c134162dcf70f3fdca9f02e2f72e027818684"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.2/mcs-0.2-osx-x86_64.zip"
    sha256 "ce379a448befc66df1478cec8621aa73be8375e12dcd40825400f6661fda3e7f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.2", output
  end
end
