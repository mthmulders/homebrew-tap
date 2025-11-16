# Generated with JReleaser 1.20.0 at 2025-11-16T14:38:57.894967+01:00

class McsExecutable < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.2-rc-7"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-7/mcs-0.9.2-rc-7-linux-x86_64.zip"
    sha256 "774d3fe30c362e4b30094afa884c2807ad29ba9fdb41a3fd9e5fa7adb7c3519e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-7/mcs-0.9.2-rc-7-osx-aarch_64.zip"
    sha256 "ad3c3b85fe9adfa70168058658e0a2127a458db82137bce7a92aef779dccfa64"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2-rc-7/mcs-0.9.2-rc-7-osx-x86_64.zip"
    sha256 "4bb55bef18cffc4765884f647ad96134e9324624fb2875619470a5eb6c885534"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs-executable" => "mcs-executable"
  end

  test do
    output = shell_output("#{bin}/mcs-executable --version")
    assert_match "0.9.2-rc-7", output
  end
end
