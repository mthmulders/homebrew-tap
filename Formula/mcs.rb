class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs"
  version "0.1.11"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.11/mcs-0.1.11-osx-x86_64.zip"
    sha256 "cb0f4b7555bbf0c7c9ef7bf6637d741df1f08b1ad0793e779ae5b30699659cbc"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.1.11", output
  end
end
