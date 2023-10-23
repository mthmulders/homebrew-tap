# Generated with JReleaser 1.8.0 at 2023-10-23T20:27:03.772910637Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.5.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.2/mcs-0.5.2-linux-x86_64.zip"
    sha256 "308728a77586013f45dacd683d4f0b9e13bb02540ce3ce81727750635546c1f9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.2/mcs-0.5.2-osx-aarch_64.zip"
    sha256 "0173c63013737c3affbcc7d96fa3972b29d371a6044fea85f3d4130c006a3cc4"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.2/mcs-0.5.2-osx-x86_64.zip"
    sha256 "03b510255a1238ac1ab57999f9ac4c3d5405b1657de94ac3f5feb9db5e0190e9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.5.2", output
  end
end
