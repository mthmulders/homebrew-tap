# Generated with JReleaser 1.18.0 at 2025-06-18T07:35:36.115831196Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.7.5"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.5/mcs-0.7.5-linux-x86_64.zip"
    sha256 "4924bcff0cb71c5507157e8ed3508a9c70803b87640f436634a50740302c88c3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.5/mcs-0.7.5-osx-aarch_64.zip"
    sha256 "dda05e5e6c13c3a5407c7c199e41e53ecc601e5e5cb27a0d31e8785327585b94"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.5/mcs-0.7.5-osx-x86_64.zip"
    sha256 "027788d725c8ebb881376039d61b8ff1dcb9d105d9f2f94c9802e0f1e3df5de9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.7.5", output
  end
end
