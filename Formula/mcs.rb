# Generated with JReleaser 1.9.0 at 2023-11-24T09:16:30.691142715Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://maarten.mulders.it/projects/mcs/"
  version "0.5.3"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.3/mcs-0.5.3-linux-x86_64.zip"
    sha256 "349ae0fa9ea2a16079afdaf5a9601c8a8edf2120151373c2c92e03c4af4d59aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.3/mcs-0.5.3-osx-aarch_64.zip"
    sha256 "8d76371e660c2774c0d87f07406ec1487c95b94e26cb4e1f4ab830d63f548629"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.5.3/mcs-0.5.3-osx-x86_64.zip"
    sha256 "11b40f8519808ea45120b21c06ecc5c86b60774866aba993720acc94b6e7646d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.5.3", output
  end
end
