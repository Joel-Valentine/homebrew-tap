class Cogo < Formula
  desc "CLI tool to interact with multiple different cloud providers"
  homepage "https://cogoapp.dev"
  url "https://github.com/Midnight-Conqueror/cogo/archive/2.3.0.tar.gz"
  sha256 "3af39a8e9324f61fd7bcc3207fef7c5fd5b8c89d624506692a61e6e18b86e97e"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "./bin/cogo" => "cogo"
  end

  test do
    system bin/"cogo", "version"
  end
end
