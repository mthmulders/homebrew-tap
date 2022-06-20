# Generated with JReleaser 1.0.0 at 2022-06-20T19:07:57.920017077Z
class Mcs < Formula
  desc "Maven Central Search"
  homepage "https://github.com/mthmulders/mcs/"
  version "0.2.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.2.1/mcs-0.2.1-linux-x86_64.zip"
    sha256 "04bbc8a1877bc5c136bb0a1c4b754f1d920d1f27d03c791944c0febe5093540a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mthmulders/mcs/releases/download/v0.2.1/mcs-0.2.1-osx-x86_64.zip"
    sha256 "62c4e196cb7d85382fb41dfb45f576d584671f08d85c2b0eecf9cc01dfa110c0"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mcs" => "mcs"
  end

  test do
    output = shell_output("#{bin}/mcs --version")
    assert_match "0.2.1", output
  end
end
