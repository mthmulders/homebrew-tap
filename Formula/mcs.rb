# Generated with JReleaser 1.25.0

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.11.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.11.0/mcs-0.11.0-linux-x86_64.zip"
    sha256 "250b79e233c1bc547083cc7504193b205730c1ad823a247687c6b4cd67d6a212"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.11.0/mcs-0.11.0-osx-aarch_64.zip"
    sha256 "b292325e01a08d028520f9354d7a079174aadd5a24547c23cf30a17b5883a47a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.11.0/mcs-0.11.0-osx-x86_64.zip"
    sha256 "1ade16aa13b582ae84d7a205fa79e5d0f2e8efdaf9ba7b7c699ef009ac107238"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.11.0", output
  end
end
