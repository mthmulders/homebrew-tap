# Generated with JReleaser 1.24.0

class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.10.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.10.1/mcs-0.10.1-linux-x86_64.zip"
    sha256 "3f0665fe13340fc7353ece2899cc3dbbf60d3a7a086531d4718a197208609c78"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.10.1/mcs-0.10.1-osx-aarch_64.zip"
    sha256 "f914722d1f481f4b14e529b49d9c5cce0a2ccbb0dbbf7ad29caede3ff0c0f326"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.10.1/mcs-0.10.1-osx-x86_64.zip"
    sha256 "657c181e0ce7ea8682d2dc1e6305a0fd4c33c8f40e8f04351fe489cd092a6126"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.10.1", output
  end
end
