# Generated with JReleaser 1.7.0 at 2023-07-11T20:43:30.053610338Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.4.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.4.0/mcs-0.4.0-linux-x86_64.zip"
    sha256 "4b3affa406987efc095676f3406a0744228c16cc22935cb8569a25c08344cb7c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.4.0/mcs-0.4.0-osx-aarch_64.zip"
    sha256 "e79e5adb5ff19c6004639ad7254bdd25d7ba6ac950760b36a9dca07524ecfb65"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.4.0/mcs-0.4.0-osx-x86_64.zip"
    sha256 "7c5a320d8c9135d15a09aa91bd5dbb2631f0c69166a1252671f76bae59e26158"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.4.0", output
  end
end
