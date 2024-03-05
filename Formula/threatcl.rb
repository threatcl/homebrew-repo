class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "16f19b6b4d744bbf994b7a6c5fc9c286274315383261d7119e88c3866afd8256"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.2.0"
    rebuild 2
    sha256 cellar: :any_skip_relocation, monterey: "b4d98b9263b182af61fc73e35eb8e1bbfe6746065b1e3ea87d9ba96f562f45cb"
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
