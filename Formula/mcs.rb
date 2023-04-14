# Generated with JReleaser 1.4.0 at 2023-04-14T14:22:39.027223843Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.3.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.2/mcs-0.3.2-linux-x86_64.zip"
    sha256 "80be67f3793a239ce9db4a9688b1313d42e5443bbef380c040b6bfb378a064f1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.2/mcs-0.3.2-osx-aarch_64.zip"
    sha256 "380fa4cca794c6eee69ebb70014f7808a0a0425bf4b6b64f267c20182c7ff2f2"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.3.2/mcs-0.3.2-osx-x86_64.zip"
    sha256 "f388928875c98babf25f1625013ffee79c3e63dd3ec1fc4ee61d98fdfc66fe90"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.3.2", output
  end
end
