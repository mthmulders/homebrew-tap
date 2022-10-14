# Generated with JReleaser 1.0.0 at 2022-10-14T20:26:27.677344269Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs/"
  version "0.2.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.2.2/mcs-0.2.2-linux-x86_64.zip"
    sha256 "2616b53e853cd234f8ea7280b7b241c313e121922bac3f273f179748ca0c62dc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.2.2/mcs-0.2.2-osx-aarch_64.zip"
    sha256 "9c54ea94c5a3e101e665ef9dea2fe51ad8c549db1d5b977f61c60189af96ea53"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.2.2/mcs-0.2.2-osx-x86_64.zip"
    sha256 "6f46eaa76fb5b142ead0315b6a5dd1289b4ce4783c62219381ea4f35be9390b1"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.2.2", output
  end
end
