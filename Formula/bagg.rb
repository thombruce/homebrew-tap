class Bagg < Formula
  desc "A minimal plaintext shopping list / wishlist for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1afd2e631b77eaed54b56c4eaf72ebf1d5375c13d1cad1d76353d0370b586702"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "8c79a2274d38b1ff3ef409a1606ddcd86d65d0635b759f1c83e0063934fec4f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01d01707ec25c7d114e93134e16906e783c28c08daa20a915044b33b0b7b10cf"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "98963f7341ae66d8b32809a505ae014c4c581bede17a45b7ba920d25071e0da7"
    end
  end

  def install
    bin.install "bagg"
  end

  test do
    system "#{bin}/bagg", "--version"
  end
end
