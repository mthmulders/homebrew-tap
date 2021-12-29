# Generated with JReleaser 0.10.0 at 2021-12-29T16:24:31.647081558Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs"
  version "0.1.18"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.18/mcs-0.1.18-linux-x86_64.zip"
    sha256 "0b1569140555c532a0eefe0f62d8c45d881b223dcc6933bc251d887b12e8a2e4"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.18/mcs-0.1.18-osx-x86_64.zip"
    sha256 "7f8506be4d5ef57c977de4dff935f7d0be2c668ff48d20cc94ac71c73d7acb57"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.1.18", output
  end
end
