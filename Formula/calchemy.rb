class Calchemy < Formula
  desc "A minimal plaintext calendar and appointment book for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e8e0b6eb4a3001f411cff96c0ec2071ed6e80dc1d587a04e1a4ee176255b55ee"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "16a887e8793d3aedefe495d556644eeaa69091e232098838f7e2a30780b26493"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c712a45bc62c248219761560dd2a310e90c9afd9b8249b9780f8b1f91ae1538d"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc13fd19adae0cfa3cb136ec24560168619fc55b67da09653a93ddc306ed1bc9"
    end
  end

  def install
    bin.install "calchemy"
  end

  test do
    system "#{bin}/calchemy", "--version"
  end
end
