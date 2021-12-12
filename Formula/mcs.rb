class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs"
  version "0.1.14"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.14/mcs-0.1.14-osx-x86_64.zip"
    sha256 "b2009b2c3e779ff54af564696023c329a4fbdd961c77e647ee226d889faeabac"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.1.14", output
  end
end
