class Clocking < Formula
  desc "A minimal CLI tool for logging your working hours"
  homepage "https://github.com/thombruce/flexi"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c8b2a04245d61ab2c02a717dcb065605b6de0d68c73bb43691032fe2e470d41a"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2913d99a384f37ed9050e641438340a5b65ec383879a0e698172abb450bf3293"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "367688a6a22594753c635f5bc73413f261ca890bc9bd5cd86e9b4d0118011d66"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dda41ff281cd0740b77731a2804960f17b1c8c17fbf3248a0ebf4906fb136074"
    end
  end

  def install
    bin.install "clocking"
  end

  test do
    system "#{bin}/clocking", "--version"
  end
end
