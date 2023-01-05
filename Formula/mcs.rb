# Generated with JReleaser 1.2.0 at 2023-01-05T13:32:26.849748259Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.3.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.0/mcs-0.3.0-linux-x86_64.zip"
    sha256 "b1da63b66129d8928bf711c4797985d7d72997e42c7ee2f53cf3ecefa02e309d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.0/mcs-0.3.0-osx-aarch_64.zip"
    sha256 "e34c74f17aa91e904e18a9fc0ad2a2364af4d275cebd04b10179c58eeec8adb0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.0/mcs-0.3.0-osx-x86_64.zip"
    sha256 "3c1c6116a3fde9cdb33474038cc9b6e6d9063be184697c134a2188f3e91cd317"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.3.0", output
  end
end
