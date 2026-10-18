class Calchemy < Formula
  desc "A minimal plaintext calendar and appointment book for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "73d8dc4c40c6c7636fb59fe6ae9515e8e0eb68a51d6c2cbdfc55cf720002f601"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d3b9d1eea5241fdc6b17072896005d517f6e6b8b5708dd6187cd1868fe54df5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d416173a659229b3903a5646afc5112b8e890b35de15f90336bb23d631552d2"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a6da859c364ebaeed1eb527d5106b5dd8b07a81962fa2f70434d4ed93b146fd"
    end
  end

  def install
    bin.install "calchemy"
  end

  test do
    system "#{bin}/calchemy", "--version"
  end
end
