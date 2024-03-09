class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "c7a7ad40fd9dacb1e229696386d46bc0fdea1e621a3dd812f074c64053d7c433"
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
