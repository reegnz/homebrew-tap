class TerraformInstall < Formula
  desc "A minimal terraform installer and transparent terraform wrapper."
  homepage "https://github.com/reegnz/terraform-install"
  license "MIT"
  url "https://github.com/reegnz/terraform-install/archive/v1.2.0.tar.gz"
  sha256 "65d0b74faf7c077925dc47be825bf81b1b450ed01c449cbd9ccffd1b3ff9355c"

  conflicts_with "terraform", because: "symlinks terraform executable"
  conflicts_with "tfenv", because: "symlinks terraform executable"

  uses_from_macos "unzip"
  uses_from_macos "curl"

  def install
    bin.install "terraform"
    bin.install "terraform-install"
    bin.install "terraform-path"
  end
end
