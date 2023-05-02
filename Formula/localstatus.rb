class Localstatus < Formula
  desc "Checks your local dev environment"
  homepage "https://github.com/tylermumford/localstatus"
  url "https://github.com/tylermumford/localstatus/archive/refs/tags/0.1-alpha.tar.gz"
  sha256 "983a41a0ff2b8b482485ebf46ac40f246ab7643a802bdf3da769e08baaba86eb"
  license "BSD-3-Clause"

  depends_on "go"

  def install
    system "go", "build"
    bin.install "localstatus"
  end

  test do
    # Create empty config file
    Dir.mkdir("./.config")
    File.open("./.config/localstatus.toml", "w") {
      #noop
    }

    # Run program
    system("#{bin}/localstatus")
  end
end
