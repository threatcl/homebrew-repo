class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "3f556b33fee8f2c16076e26a6573651599126349b48373e2ca87e74bcff7a2f7"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.4.3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8623c07ee94fcdccb75aaf30e6ce425c22adfe5ff2aafdb39a398b224354bdd4"
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
