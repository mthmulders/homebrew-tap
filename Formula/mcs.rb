# Generated with JReleaser 1.18.0 at 2025-05-16T12:04:46.489571619Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.7.4"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.4/mcs-0.7.4-linux-x86_64.zip"
    sha256 "d0323a0ef4536ff5114e3bb115ae2f5a470fa35bce8fe205163e38f79cfab26d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.4/mcs-0.7.4-osx-aarch_64.zip"
    sha256 "4c3231260a05e4390c8221cd849917a1f8fcb9b72100b81d559e40a1494f775e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.4/mcs-0.7.4-osx-x86_64.zip"
    sha256 "15d6369b3673b73bd1b9aed1d434b86c4c598e1051a37bfcd3c18f63bab249a2"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.7.4", output
  end
end
