# Generated with JReleaser 1.4.0 at 2023-01-05T16:13:24.759680226Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.3.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.1/mcs-0.3.1-linux-x86_64.zip"
    sha256 "4897a21d40519ed2e418f98afeb01bee249c04c697e9a865bd7d688451a162ee"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.1/mcs-0.3.1-osx-aarch_64.zip"
    sha256 "9e349704fb1d1e3f5f6d7be027f32ef5769ef8941b375782f5511ad605ef1c3b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.1/mcs-0.3.1-osx-x86_64.zip"
    sha256 "c3aacab43c6bd2e2b832c2ba69f1e9c9e553fe7d4fb501d4c72d20a2bf9705ad"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.3.1", output
  end
end
