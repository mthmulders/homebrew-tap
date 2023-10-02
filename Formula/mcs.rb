# Generated with JReleaser 1.7.0 at 2023-10-02T16:18:23.881637877Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.5.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.0/mcs-0.5.0-linux-x86_64.zip"
    sha256 "ea3b02ed3034ee42ed85b905126f12e381ec64deb0f88101e7402a8047552e98"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.0/mcs-0.5.0-osx-aarch_64.zip"
    sha256 "dba26dc6e95cfd1b83ca2cf1525326c6a2c493d5bb7e5c593f57d0461a0ca921"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.0/mcs-0.5.0-osx-x86_64.zip"
    sha256 "185e4bdc11b4d7a2a8efa7300da278dc7208061e4c950a572bdbf1f351566f3e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.5.0", output
  end
end
