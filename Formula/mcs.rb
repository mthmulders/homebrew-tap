# Generated with JReleaser 0.10.0 at 2021-12-29T13:16:17.546218209Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs"
  version "0.1.17"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.17/mcs-0.1.17-linux-x86_64.zip"
    sha256 "971d5da0ec0249e8ea7b3a5d87c027ab10f00d4df376181e1ab44e86de518652"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.17/mcs-0.1.17-osx-x86_64.zip"
    sha256 "d311daddf4f3509d2aac81a2784030071d94be0c478b2b9ca162618e77dfbd08"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.1.17", output
  end
end
