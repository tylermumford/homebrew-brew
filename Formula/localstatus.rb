class Localstatus < Formula
  desc "Checks your local dev environment"
  homepage "https://github.com/tylermumford/localstatus"
  url "https://github.com/tylermumford/localstatus/archive/refs/tags/v0.2-beta.tar.gz"
  sha256 "aacf2b445ca5af8a24cbf67b77de9596a23eeca85e6a7c03cc0309a60c7bb613"
  license "BSD-3-Clause"

  depends_on "go"

  def install
    system "go", "build"
    bin.install "localstatus"
  end

  test do
    # Create empty config file
    Dir.mkdir("./.config")
    File.open("./.config/localstatus.toml", "w") do
      # empty
    end

    # Run program
    system("#{bin}/localstatus")
  end
end
