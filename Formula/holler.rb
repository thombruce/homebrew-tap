class Holler < Formula
  desc "A minimal plaintext contacts / rolodex for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "be80902cc3f8d2b67f83effc9f0beafce5f707b7f13daebf463c3ab59d6c7ca2"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e69e8ffa083a2c90e0cb0f0b47da13fff7bb402778e33e3293bd1d59fb2e288d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d90e25d2b2bc5d2d58fc874d55beda24aa5320bf211805937c8751686b9bc8bd"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64ea0673f1c5164ff00009da9fa3db6f6628e7c2cf88666d0510d236be3473ce"
    end
  end

  def install
    bin.install "holler"
  end

  test do
    system "#{bin}/holler", "--version"
  end
end
