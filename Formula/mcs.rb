# Generated with JReleaser 1.20.0 at 2025-10-17T11:15:17.363717557Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.1/mcs-0.9.1-linux-x86_64.zip"
    sha256 "3e1dbe71ff5ec51a9955962898f278ca6d68f9b6b9e094cc83bfe48b2adf9194"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.1/mcs-0.9.1-osx-aarch_64.zip"
    sha256 "b162a85de3daf4294772ab67f45e8ec5335887c5a5157f7c69f52c62361bf299"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.1/mcs-0.9.1-osx-x86_64.zip"
    sha256 "90f85d3e2d03231b610a54dd7cc8050a945a4851ead69f21beff52366473881d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.9.1", output
  end
end
