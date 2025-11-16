# Generated with JReleaser 1.20.0 at 2025-11-16T15:49:37.641306+01:00

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.2-rc-9"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-9/mcs-0.9.2-rc-9-linux-x86_64.zip"
    sha256 "a31ae313f7e23397bc80368942072e2a870c7c68507d8e6f21e647da7b8bfc31"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-9/mcs-0.9.2-rc-9-osx-aarch_64.zip"
    sha256 "db3fd26956992460a37db75bbe498cdd549c25feb62b0dc1139066da5df20295"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-9/mcs-0.9.2-rc-9-osx-x86_64.zip"
    sha256 "caf331614a29b8a5357df98e6876d2ab2c19b0c26637a77250ae2ca2ed8827ec"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs-executable" => "mcs-executable"
  end

  test do
    output = shell_output("#{bin}/mcs-executable --version")
    assert_match "0.9.2-rc-9", output
  end
end
