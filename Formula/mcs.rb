# Generated with JReleaser 1.19.0 at 2025-08-25T12:31:33.562354239Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.8.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.8.0/mcs-0.8.0-linux-x86_64.zip"
    sha256 "42e0ef7365e375adf043fc8cafa7aab18a92b5eff116a50cb26e36700318e364"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.8.0/mcs-0.8.0-osx-aarch_64.zip"
    sha256 "0b83b491e41eef42effad7f60d1fb8163d7e524df346209eb1292e08742305fb"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.8.0/mcs-0.8.0-osx-x86_64.zip"
    sha256 "1a517893617ec6125db1694f765d1a219fd93f089f936fba35f0c0ca6c21e011"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.8.0", output
  end
end
