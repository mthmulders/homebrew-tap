# Generated with JReleaser 1.25.0

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.11.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.11.1/mcs-0.11.1-linux-x86_64.zip"
    sha256 "cdefdc2abb91d232a94bfaef8502b09723e6be4964ba736a5e4565776d558036"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.11.1/mcs-0.11.1-osx-aarch_64.zip"
    sha256 "fa5fe6213cb3e8843e7c1def57517015dded88dff26a1b4d99539c6b10fbb4de"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.11.1/mcs-0.11.1-osx-x86_64.zip"
    sha256 "be28b43bf9906eeed8fb0196482c27da7448efcd2d016271d4b2384e2e15448e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.11.1", output
  end
end
