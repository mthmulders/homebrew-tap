class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs"
  version "0.1.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.9/mcs-0.1.9-osx-x86_64.zip"
    sha256 "afdb7f7c6be2e7363e5fc4086eed9405a30e90f8b7ef6c53abac506471a8026a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.1.9", output
  end
end
