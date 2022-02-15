class TerraformInstall < Formula
  desc "A minimal terraform installer and transparent terraform wrapper."
  homepage "https://github.com/reegnz/terraform-install"
  license "MIT"
  url "https://github.com/reegnz/terraform-install/archive/v1.0.0.tar.gz"
  sha256 "7b72c776b303f8a8f38d8d86e247df5105738ed2d4b684fbe9315059e1cf3595"

  conflicts_with "terraform", because: "symlinks terraform executable"
  conflicts_with "tfenv", because: "symlinks terraform executable"

  uses_from_macos "unzip"

  def install
    bin.install "terraform"
    bin.install "terraform-install"
  end
end
