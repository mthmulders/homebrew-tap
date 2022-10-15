# Generated with JReleaser 1.2.0 at 2022-10-15T19:53:20.871269369Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.2.3"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.2.3/mcs-0.2.3-linux-x86_64.zip"
    sha256 "6e9c32eb8226d0179ac67b015adef2097873f63298eb2ca86f21ed58fee4270f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.2.3/mcs-0.2.3-osx-aarch_64.zip"
    sha256 "e5ba075f6fcc7628ea56d5bbee36c40477237ca02849cc347ea7a0017c72cdff"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.2.3/mcs-0.2.3-osx-x86_64.zip"
    sha256 "33ddb3105448da40aa76c76212e70dce785fb8367b0fe588db2b58098b9f8ae1"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.2.3", output
  end
end
