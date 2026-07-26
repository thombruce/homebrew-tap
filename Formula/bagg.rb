class Bagg < Formula
  desc "A minimal plaintext shopping list / wishlist for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "820d10bd5f359bb76e46d53c23e199b841e3e078de981efd9503f8c746740f2d"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3fa7997c7d98bc3d8eaec5704b8b2bdef0ff70a92223eb7941ce93c7cfc74017"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79e0a92d46880ef78e0a7b10833961a1802474d92550656e61ae0074acc114de"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f82351bde99b388a5617442219e7cca545947cbbda6c45feeab56ee21a9c971a"
    end
  end

  def install
    bin.install "bagg"
  end

  test do
    system "#{bin}/bagg", "--version"
  end
end
