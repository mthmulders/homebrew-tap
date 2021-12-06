class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs"
  version "0.1.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.4/mcs-0.1.4-osx-x86_64.zip"
    sha256 "c7c84a326ecabfff05a30e34cc1d5b4cf83fa2f0bece2e2fac5d37f5a589ebe5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.1.4", output
  end
end
