# Generated with JReleaser 1.20.0 at 2025-11-16T14:20:01.564033+01:00

class McsExecutable < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.2-rc-6"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-6/mcs-0.9.2-rc-6-linux-x86_64.zip"
    sha256 "677d35afa4a4c4e9db15df0700b12ec6f9502eab37d36451577ce4b1ef124fe7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-6/mcs-0.9.2-rc-6-osx-aarch_64.zip"
    sha256 "db2946047de3096428c9c175aade0f67c5bc1d4322a79529cf0e579559e5b106"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-6/mcs-0.9.2-rc-6-osx-x86_64.zip"
    sha256 "cf7af72f03a15e937698b1759ca7893963a46687a5d28c06a38e688ecdb4cdce"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs-executable" => "mcs-executable"
  end

  test do
    output = shell_output("#{bin}/mcs-executable --version")
    assert_match "0.9.2-rc-6", output
  end
end
