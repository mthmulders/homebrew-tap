# Generated with JReleaser 1.26.0

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.11.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.11.2/mcs-0.11.2-linux-x86_64.zip"
    sha256 "9066db1eb16fca4d25fa74be889d78c64582472f059b147ae5272e63a3b6ed32"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.11.2/mcs-0.11.2-osx-aarch_64.zip"
    sha256 "211cb96e1343e778ca50dada522b564b5fa2e0b7cabed727a3ddace50da1a304"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.11.2/mcs-0.11.2-osx-x86_64.zip"
    sha256 "27c459c442a50256cf4f5ef22f15ae00e51011b733f144717c2551030168244d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.11.2", output
  end
end
