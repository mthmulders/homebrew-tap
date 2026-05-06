# Generated with JReleaser 1.24.0

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.10.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.10.0/mcs-0.10.0-linux-x86_64.zip"
    sha256 "f9147a27818d909cee9ef98f7eb37521dd3c80640d1c7fff14dc83cc1961b4f0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.10.0/mcs-0.10.0-osx-aarch_64.zip"
    sha256 "061436e0d9e0765e5e1f66cc61d7cbce83e0a4e4ec20566a1a5ba81aadc377e1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.10.0/mcs-0.10.0-osx-x86_64.zip"
    sha256 "e0f5d489f686982be55dcd4e65f7bbfd34df8e7b5d2052f47fab64d3b6bfbcbc"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.10.0", output
  end
end
