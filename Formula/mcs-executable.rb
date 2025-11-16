# Generated with JReleaser 1.20.0 at 2025-11-16T14:53:53.834354+01:00

class McsExecutable < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.2-rc-8"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-8/mcs-0.9.2-rc-8-linux-x86_64.zip"
    sha256 "ab32c71a8a9d97fd1cb87342dee22378c6b8747e61414a177e7c9793d842af81"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-8/mcs-0.9.2-rc-8-osx-aarch_64.zip"
    sha256 "9cc97efef2d7f6bb07602f6b21c73157c1747b1b8ce37ef5b8aef97fcd8a4e5a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-8/mcs-0.9.2-rc-8-osx-x86_64.zip"
    sha256 "fde676cf5297d4f0aa21d339a715371eaadcfcd07f2b0c3f11c88d207f939d6e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs-executable" => "mcs-executable"
  end

  test do
    output = shell_output("#{bin}/mcs-executable --version")
    assert_match "0.9.2-rc-8", output
  end
end
