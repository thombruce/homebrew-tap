class Calchemy < Formula
  desc "A minimal plaintext calendar and appointment book for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7cd200f1dd3f79eea96bcea13d4df0133fb47b36c86bc6c041951724209cd5b8"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d7c63287c42dd05698351c6ea2b6c36f96ee9ee499826fb0acd36966902dd8b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fec926c13a5881ceab0b3e3b89666eaf0a0fa5309b7ab405d8095286dec29844"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4fcb39c8cc45a847cb04a8f388298d84926b7a6cb4881f36c9cb344772de3716"
    end
  end

  def install
    bin.install "calchemy"
  end

  test do
    system "#{bin}/calchemy", "--version"
  end
end
