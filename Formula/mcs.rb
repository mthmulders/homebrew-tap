# Generated with JReleaser 1.20.0 at 2025-11-16T13:51:15.112492+01:00

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.2-rc-3"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-3/mcs-0.9.2-rc-3-linux-x86_64.zip"
    sha256 "b83f643beaf52477dc46934661b5456064257c7b2bf53d8fbc14269c10a64365"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-3/mcs-0.9.2-rc-3-osx-aarch_64.zip"
    sha256 "08231c4b9875bf749381d3192caed32d74cd1a5caeaf6222c4fa8328476d332b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-3/mcs-0.9.2-rc-3-osx-x86_64.zip"
    sha256 "c9305fd6553da094a0dad8c7e27370e41c761ea1226f1d6653b3feb01ddea95f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.9.2-rc-3", output
  end
end
