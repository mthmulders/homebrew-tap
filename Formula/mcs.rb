# Generated with JReleaser 1.13.1 at 2024-08-09T16:17:26.452429484Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.7.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.1/mcs-0.7.1-linux-x86_64.zip"
    sha256 "d4d5a01c29f6a3d699f1121c951f6551aa66f8ebb31492e9a9cf8af769bb2392"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.1/mcs-0.7.1-osx-aarch_64.zip"
    sha256 "a4ba317f6a440c6874e00219848fbe3f615b387153ccac51ba4f47ae9340c926"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.1/mcs-0.7.1-osx-x86_64.zip"
    sha256 "2ab2d6326a530f9717104908aafc32df68106570bab73cf614d1b6ba05564f16"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.7.1", output
  end
end
