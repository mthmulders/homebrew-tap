# Generated with JReleaser 1.20.0 at 2025-09-18T20:18:30.412664045Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.0/mcs-0.9.0-linux-x86_64.zip"
    sha256 "767a2d210c408b077f8df799d141869401bb8946787ea5e3f0d25ca59f3440df"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.0/mcs-0.9.0-osx-aarch_64.zip"
    sha256 "72067d42e83fac6b5fc80098a3d6cf45641640f37158ec34cced562597c1300f"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.0/mcs-0.9.0-osx-x86_64.zip"
    sha256 "7f5a64324003a5a3d1bb4625af61fcb9849f78aa4479ddc0fd55f5b9a980e1a7"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.9.0", output
  end
end
