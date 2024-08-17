class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "de8d140cad1d5d00114712d2cb8325a1f3a8a8dac94f0e0d25c590bfb486639e"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.2.1"
    sha256 cellar: :any_skip_relocation, monterey: "a5923a1953a82c4f038ace0762e190beeae745498a5fee999f1219b117f278d8"
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
