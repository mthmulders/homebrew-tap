# Generated with JReleaser 1.16.0 at 2025-02-21T15:15:35.061240581Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.7.3"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.3/mcs-0.7.3-linux-x86_64.zip"
    sha256 "f7e2699c1cba127fe271e1f15c5481cfc6365efa5f4a5ea8acce43b0f6049e2f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.3/mcs-0.7.3-osx-aarch_64.zip"
    sha256 "6f1920f99783008900948bd841452dbe3f7772a8654477ecb460869e4432e7d3"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.3/mcs-0.7.3-osx-x86_64.zip"
    sha256 "55ddd5f89b639598039848848e48875e7f3b297adbbb9a567a470bf66b6dbe7e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.7.3", output
  end
end
