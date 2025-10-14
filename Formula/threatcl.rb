class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "b0cfd7bc212f29e1af190e6595912378926fd64befdc26e04b4739270c668601"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.2.6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e91f2b640ae77636d9ebf787dac141d4318e07e2f9ddf3db5e2365a02b00e48d"
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
