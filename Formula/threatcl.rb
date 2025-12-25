class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "407434c1e61f80a96d32260e9a7aa0d682057da70b1625fb4f4901878a339ec7"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.2.8"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ed0b360a21a5352721102afd588141b1934a473aafd1acdcaee14c6df9be461a"
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
