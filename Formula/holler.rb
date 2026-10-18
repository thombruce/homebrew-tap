class Holler < Formula
  desc "A minimal plaintext contacts / rolodex for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ddd42fbca78ee8e787ce2f19064cd88059e416eeadd0ee83c9fa51a112945731"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3bbff066b14435cc8521edbf637985a41ff45d474192f2153e603a65323d6016"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "879779029eefa8a0d6042504859adecca779ee5ac191798d47c9e66e403505d9"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d668a067a50d5883f84d46b2b9e19e8c47b6bde3f2d1908204148de1118a194"
    end
  end

  def install
    bin.install "holler"
  end

  test do
    system "#{bin}/holler", "--version"
  end
end
