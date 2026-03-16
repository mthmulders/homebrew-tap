# Generated with JReleaser 1.23.0 at 2026-03-16T17:47:32.27127+01:00

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.7"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.7/mcs-0.9.7-linux-x86_64.zip"
    sha256 "9ff1b1ceec2fd7bde234ec2e4eaca3ec47dece3c76bffca9688c6777e0ffb660"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.7/mcs-0.9.7-osx-aarch_64.zip"
    sha256 "62e433b9857aed9f43d54b136fbfea47f964814a7f1aa9d0daf1f1ff7018f73f"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.7/mcs-0.9.7-osx-x86_64.zip"
    sha256 "2d14b54d82e50973c38056c887a77fa5d4095f4d2e3ce4cbdb18b074dd26a138"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.9.7", output
  end
end
