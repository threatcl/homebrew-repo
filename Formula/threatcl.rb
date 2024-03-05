class Threatcl < Formula
  desc "Documenting your Threat Models with HCL."
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "16f19b6b4d744bbf994b7a6c5fc9c286274315383261d7119e88c3866afd8256"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/xntrik/homebrew-repo/releases/download/hcltm-0.1.7"
    sha256 cellar: :any_skip_relocation, monterey: "58641da38145eda9d130518f9f05dc574bca09e81b3fefae55ee381879650252"
  end

  depends_on "go"

  def install
    system "go", "build", "-o", "bin/threatcl", "./cmd/threatcl"
    bin.install "bin/threatcl"
  end

  test do
    assert_match @version.to_s, shell_output("#{bin}/threatcl --version")
  end
end
