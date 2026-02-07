class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "8e8f9a4d49c2f3889f7b00f1835d5307c6f5fe5c6e82e8ab85d0033c01646bc7"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.3.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "83b23b63d0ca5152d1339445c4e86eb2942c859f0733f52b2166ddf77da952dc"
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
