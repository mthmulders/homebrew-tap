# Generated with JReleaser 1.12.0 at 2024-05-09T16:44:49.799380221Z

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.7.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.0/mcs-0.7.0-linux-x86_64.zip"
    sha256 "33b4f5d72e69ff170bfec7fe2ac4afc641dcc1da8aeca1c6242e937078a3918a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.0/mcs-0.7.0-osx-aarch_64.zip"
    sha256 "511f2fb36eea12ed288cd6da2e83a81aa69e74677a2f45e07eaf80f8ad4eed6e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.7.0/mcs-0.7.0-osx-x86_64.zip"
    sha256 "6016d1cc8c3fee51c80145708796325f6b4706682693d998295c9efa81303528"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.7.0", output
  end
end
