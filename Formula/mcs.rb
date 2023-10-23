# Generated with JReleaser 1.8.0 at 2023-10-23T19:12:27.626052771Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.5.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.1/mcs-0.5.1-linux-x86_64.zip"
    sha256 "2870dc5a2239e6eea92f5e6dba5b9e0bbc32d252d9f7c920f139d56a03c2fc08"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.1/mcs-0.5.1-osx-aarch_64.zip"
    sha256 "55a12804f3a80feb5f794d59141ba6cffc529af5a1cdde73dd214f35a982204b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.1/mcs-0.5.1-osx-x86_64.zip"
    sha256 "4c2171881593ac2be4bcfd8003d5099077bb511cc69422ad73509c4fa3c63312"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.5.1", output
  end
end
