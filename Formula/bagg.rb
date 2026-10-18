class Bagg < Formula
  desc "A minimal plaintext shopping list / wishlist for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3d4c12cc46b26a10d5e6c4c4e72930bd56e4c018249e2536d8746bf4c6c122da"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7412b9faa00d01758d95b5d98d685ab0cc3cf358b8da4cb9aada51cb49091328"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8eceb31882b89f8ef110f90d8105be10ef3a12d89c630ab1bc0c80baac6a3a92"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9e59187d724bc4764d3c6bc5c1a512c7ae0e01f9f2f2de36f3761b73d2fa0bf"
    end
  end

  def install
    bin.install "bagg"
  end

  test do
    system "#{bin}/bagg", "--version"
  end
end
