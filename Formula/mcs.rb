# Generated with JReleaser 1.4.0 at 2023-05-03T10:38:25.35543898Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.3.3"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.3/mcs-0.3.3-linux-x86_64.zip"
    sha256 "d1292239e928d595dc7504024726d0b1461497bdc3183923a3e9b9c0101d1feb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.3/mcs-0.3.3-osx-aarch_64.zip"
    sha256 "2d18afb9e75e5aafbae79bc11a950d0ab9781ad1f21c35e4e52a6ca73186a2fd"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.3/mcs-0.3.3-osx-x86_64.zip"
    sha256 "acd1f5480a3711af21ed9017f8c622ca6e518b40087bc9051ae2cfa6362e84c1"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.3.3", output
  end
end
