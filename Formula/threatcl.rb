class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "407434c1e61f80a96d32260e9a7aa0d682057da70b1625fb4f4901878a339ec7"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.3.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6f9c565e11777805983c00a8a9ddd33387efdb44ea91dc1f1a7434d3edc35b75"
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
