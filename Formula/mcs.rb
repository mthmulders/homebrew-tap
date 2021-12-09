class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs"
  version "0.1.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.6/mcs-0.1.6-osx-x86_64.zip"
    sha256 "b5d1bbbb57c7cf175bb60eebd5837acf12dd3d8ec127c4076fbf771500f74112"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.1.6", output
  end
end
