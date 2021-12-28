class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs"
  version "0.1.16"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.16/mcs-0.1.16-linux-x86_64.zip"
    sha256 "47af7979d6e8209e000c44d0417347b5bec89f5bbc60941f41dc8070dcbc5085"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.1.16/mcs-0.1.16-osx-x86_64.zip"
    sha256 "eac2f0052151fdcb6929c66cd003e4a9cb4dfb706b5e97e7b9731d5ac511347e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.1.16", output
  end
end
