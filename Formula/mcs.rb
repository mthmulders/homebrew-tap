# Generated with JReleaser 1.10.0 at 2024-03-14T10:50:12.078489357Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.6.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.1/mcs-0.6.1-linux-x86_64.zip"
    sha256 "07c85d93e55e91fccd45d00e5e5698b2c88cd48632da81bb6a3bd7ea9977865a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.1/mcs-0.6.1-osx-aarch_64.zip"
    sha256 "fdaabb36605fc99ed523c2614857e5f95244996e19a5edc7742ac1fb26170f3d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.1/mcs-0.6.1-osx-x86_64.zip"
    sha256 "2b979552fa2cb9959ec5861d8e0a9ea2d46cab66b8c8fb251ab10db93af251c6"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.6.1", output
  end
end
