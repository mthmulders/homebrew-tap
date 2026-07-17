# Generated with JReleaser 1.25.0

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.10.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.10.2/mcs-0.10.2-linux-x86_64.zip"
    sha256 "7ebf0a32628ffce726f23f9ad2a6cdedff98d642477498672e64f9f2fd7a52f0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.10.2/mcs-0.10.2-osx-aarch_64.zip"
    sha256 "068b377928ac0cc422845fa3f45a381f18d66cc4e0260aef630f68671af419b5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.10.2/mcs-0.10.2-osx-x86_64.zip"
    sha256 "2edfc6a15852775e501d3b103df8a8a3bc32ed5dfb1bc9f3a9d4c17f717b45fa"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.10.2", output
  end
end
