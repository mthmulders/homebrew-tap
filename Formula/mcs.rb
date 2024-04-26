# Generated with JReleaser 1.11.0 at 2024-04-26T17:02:15.21925718Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.6.3"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.3/mcs-0.6.3-linux-x86_64.zip"
    sha256 "33608724cecaffadd7fb509bf8f800e27196a228019d8bf4f6dea0bbea7e0267"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.3/mcs-0.6.3-osx-aarch_64.zip"
    sha256 "6d3d324a4ab92f8852b1896ec7d43d57d530338a94844ffbf7e201fc407f19eb"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.3/mcs-0.6.3-osx-x86_64.zip"
    sha256 "ea10e3d14383ca63dd2800fba14b50d712e9a7d1ed2525541cbac9480a6452a6"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.6.3", output
  end
end
