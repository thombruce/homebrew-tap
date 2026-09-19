class Tonic < Formula
  desc "A git worktree companion"
  homepage "https://github.com/thombruce/tonic"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "045a98ba79b283310025d0242e12d3869c93290e2332927f10d1bf8085260578"
    end
    on_intel do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c27b941e0d980c0933f6d5a5650aac6a8733f337520e5fcadaeff949bcb5bad5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d7c0115246c7d06aae3317189edb881dc698f62f3d016134a6686544b25de5a"
    end
    on_intel do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e970ad4f0b6802303ae7090e19077c617d9e968ca9c2d99a6e1ac544929ba4de"
    end
  end

  def install
    bin.install "tonic"
  end

  test do
    system "#{bin}/tonic", "--version"
  end
end
