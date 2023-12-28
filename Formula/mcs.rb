# Generated with JReleaser 1.9.0 at 2023-12-28T14:51:54.052680813Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.6.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.0/mcs-0.6.0-linux-x86_64.zip"
    sha256 "c9c284fb1f924040e47ced107bca66e91c5da0bba33c7edcbd208c0ec7b63c30"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.0/mcs-0.6.0-osx-aarch_64.zip"
    sha256 "a45ec3d829523ad449f8d9445f7a396b3dec88fb6a09b3c0e6db949fdd609b03"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.0/mcs-0.6.0-osx-x86_64.zip"
    sha256 "1b4e575c3d726b6e36cec616364cc924d5591cbc1c34bfc3e57f621fdcdfd664"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.6.0", output
  end
end
