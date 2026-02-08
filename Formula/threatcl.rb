class Threatcl < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/threatcl/threatcl"
  url "https://github.com/threatcl/threatcl/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "8b91d06e26e5a7b3864b724295162f27d6c92a321aeeb81666fc3e14427b23a0"
  license "MIT"
  head "https://github.com/threatcl/threatcl.git", branch: "main"

  bottle do
    root_url "https://github.com/threatcl/homebrew-repo/releases/download/threatcl-0.4.0"
    sha256 arm64_sequoia: "d804a2d52a08b6fa1dd35e745028e7a6889be1ecbf9b9dbab0ee88703c904f49"
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
