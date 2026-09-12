class Tonic < Formula
  desc "A git worktree companion"
  homepage "https://github.com/thombruce/tonic"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9ad30b55f0caaa12ee2e570e635048f0a7998bda6f05ec2430184d7376d74acc"
    end
    on_intel do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f3d63369851bae60e751079760f5880fcfe54303ed25e017509b78ebba06d3a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd2472fc7841fef4f6284151ac7d21343cd0a962810083a5295375cb569c56f8"
    end
    on_intel do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80a4d6d95d87a0adb420819d51e0e826805dd4096380fa16c1c15636b0819e66"
    end
  end

  def install
    bin.install "tonic"
  end

  test do
    system "#{bin}/tonic", "--version"
  end
end
