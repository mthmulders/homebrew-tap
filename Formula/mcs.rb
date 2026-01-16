# Generated with JReleaser 1.22.0 at 2026-01-16T21:59:39.977319+01:00

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.4"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.4/mcs-0.9.4-linux-x86_64.zip"
    sha256 "0cba47a39b04ef31b57ddb16a0e857ea669f6cab34b287e4ad96e37c556dea1b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.4/mcs-0.9.4-osx-aarch_64.zip"
    sha256 "d76b3d82e8c7d80ab0d61cc5d174ee48091ea6445464e8aeb165068799a8d52d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.4/mcs-0.9.4-osx-x86_64.zip"
    sha256 "521956c30757ac8558767298443f7a56aad55dee3bfccb1dec9b38c3fa92c950"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.9.4", output
  end
end
