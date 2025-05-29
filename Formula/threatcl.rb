class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "0f4b73b4ae878ba1be624c3089c51fcbb298548f160ab26f52412e1407d762c8"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.2.3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "315fda4f7dd1e713f92921b6aa1ca60f21965044a2fa40e12fa34627755eda97"
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
