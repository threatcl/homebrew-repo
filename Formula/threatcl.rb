class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "9b0a9917d889de32b645e8c448a2c5dea8d9df53a37db6981466640affcc26a2"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.2.2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "baf64b0d8fd8e18fcd54d478afc407dd023e054a82c9febb18a73b7ecae23540"
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
