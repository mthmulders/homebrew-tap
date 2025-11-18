# Generated with JReleaser 1.21.0 at 2025-11-18T12:06:57.608144+01:00

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.9.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2/mcs-0.9.2-linux-x86_64.zip"
    sha256 "3be7ee1f5cc4c12055fa8385cb5b9fb32fbcdb0b0f842ceb5cc6acea17f6186f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2/mcs-0.9.2-osx-aarch_64.zip"
    sha256 "f9a595c4fbc7e531658d103a885d1d78189fae70c6e5c42274432488f3305bd7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.9.2/mcs-0.9.2-osx-x86_64.zip"
    sha256 "41720ae91b18b7828e65b27d96441ce871e1655ec5402849291c31f447d5fac4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.9.2", output
  end
end
