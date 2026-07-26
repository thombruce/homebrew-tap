class Bagg < Formula
  desc "A minimal plaintext shopping list / wishlist for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a73aefc3602d100911bd32f5c4514efe71ec4df3bfe48db4b1e90e7a8ec9c1e1"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "37f536d74542bb1ccda65d721a4435e38ac30016145ec2eb0fe380f041ad7df9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6019b9b4562d22a544d229b773a2370d795c47431f29167bbb2a30b45ab6e89a"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70dafdf2fe0ddc89580178041531c7283c5f5031f5eae295737beb205f09c2b3"
    end
  end

  def install
    bin.install "bagg"
  end

  test do
    system "#{bin}/bagg", "--version"
  end
end
