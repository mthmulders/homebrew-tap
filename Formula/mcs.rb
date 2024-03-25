# Generated with JReleaser 1.11.0 at 2024-03-25T14:49:23.052506313Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.6.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.2/mcs-0.6.2-linux-x86_64.zip"
    sha256 "a60c2fbd4bad42b3ad84997d3855a07a31e725c5042de5f8d50e2719c32e2590"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.2/mcs-0.6.2-osx-aarch_64.zip"
    sha256 "bc5b4649905ab27f2953f3ea4f1488d7290f990ec101b6336c9c3daf18952a0c"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.2/mcs-0.6.2-osx-x86_64.zip"
    sha256 "37254c3c9462aa6149d2627d4c5efcd0c5f58c0e84df12792d37ba934e91a34a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.6.2", output
  end
end
