class Clocking < Formula
  desc "A minimal CLI tool for logging your working hours"
  homepage "https://github.com/thombruce/flexi"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ce4057f71b6c4ca4f0c8e9f9369ab9280f9b5c5122d2ba37c61c00343d5374ee"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c64c4844ed3f88b3c3e60d1528869360b300abc31d6116a25ce9e4eb77f20e1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2384b352d6e69496a571681084f9b1cd36f7505aca10832aab0bdf9a24fd2aed"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28eccf25dade20e765540e04bbfb06c73b165a429ab7542341dc83ff905516f4"
    end
  end

  def install
    bin.install "clocking"
  end

  test do
    system "#{bin}/clocking", "--version"
  end
end
