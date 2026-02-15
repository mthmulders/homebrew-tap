# Generated with JReleaser 1.22.0 at 2026-02-15T16:49:14.275885+01:00

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.5"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.5/mcs-0.9.5-linux-x86_64.zip"
    sha256 "16d35a501a5f00f4d2882905378a344e1a6f27007e04002e392739ccc21fcf9e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.5/mcs-0.9.5-osx-aarch_64.zip"
    sha256 "c0835b4fa8a7363bc0444b7534c58264730a95a8982a53d689500c3f98f6f642"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.5/mcs-0.9.5-osx-x86_64.zip"
    sha256 "eb885dc92856e2466f4d113ad5bab8f989706e334ed4c6ed693cbbf6677347b2"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.9.5", output
  end
end
