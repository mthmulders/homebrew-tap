# Generated with JReleaser 1.21.0 at 2025-12-18T14:08:12.676178+01:00

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.3"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.3/mcs-0.9.3-linux-x86_64.zip"
    sha256 "e1192436e96f01906b6464afe29259e9eb4ff5fa4567218d0d336ebaf7c63b01"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.3/mcs-0.9.3-osx-aarch_64.zip"
    sha256 "6f18cd307751e8562039e3a2e2e914c1ab1dca69949282a674ad3fb24f514bd9"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.3/mcs-0.9.3-osx-x86_64.zip"
    sha256 "271b254f1dfdb9f10d990c7f4996d34aec9dbda496d718a63073cc3a9857ec09"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.9.3", output
  end
end
