class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "16f19b6b4d744bbf994b7a6c5fc9c286274315383261d7119e88c3866afd8256"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  depends_on "go"

  def install
    system "go", "build", "-o", "bin/threatcl", "./cmd/threatcl"
    bin.install "bin/threatcl"
  end

  test do
    assert_match @version.to_s, shell_output("#{bin}/threatcl --version")
  end
end
