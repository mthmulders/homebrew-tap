# Generated with JReleaser 1.12.0 at 2024-05-02T09:55:27.419441787Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.6.4"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.4/mcs-0.6.4-linux-x86_64.zip"
    sha256 "32d0e0b6b764201479365327d927ba5973b82edd6e4073d0fda7a9f0fbea0fe1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.4/mcs-0.6.4-osx-aarch_64.zip"
    sha256 "e01bb799248500ffc035dedcefdc618ce7c76adb06f4f8d839d02fafd1f25707"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.6.4/mcs-0.6.4-osx-x86_64.zip"
    sha256 "6bb94c35bcace1f81a57be639abc821a04c65ce345870873f9bfc2b78c9a0f78"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.6.4", output
  end
end
