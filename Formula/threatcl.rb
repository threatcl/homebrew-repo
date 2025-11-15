class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.2.7.tar.gz"
  sha256 "bc9189ed77c8362886dee3bea7c9e638f5c461f245674f82f5b0e8b6bbc58c8f"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.2.7"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e0336b66aacefa2896501e2079b976a31ee3f3e19393568cdc10f600bb970ddb"
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
