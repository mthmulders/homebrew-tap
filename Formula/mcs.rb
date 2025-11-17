# Generated with JReleaser 1.20.0 at 2025-11-17T09:39:50.846223+01:00

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.2-rc-10"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-10/mcs-0.9.2-rc-10-linux-x86_64.zip"
    sha256 "45475ad4063c9ac378da52e1801f631090cfff9713f06c2d28f4e921f58af90e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-10/mcs-0.9.2-rc-10-osx-aarch_64.zip"
    sha256 "a473825aa553d315a8485f9e1932bc297adeab56be2409a56eeeb7be7402e501"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-10/mcs-0.9.2-rc-10-osx-x86_64.zip"
    sha256 "3f65e550c1b9ede4b0f91319dd7a29393a49eb9cdf91a5e832786775cae57f2b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.9.2-rc-10", output
  end
end
