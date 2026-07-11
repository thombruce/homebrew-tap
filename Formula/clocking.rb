class Clocking < Formula
  desc "A minimal CLI tool for logging your working hours"
  homepage "https://github.com/thombruce/flexi"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d490ebdfe9d471e83c5be2cdbbdc237ab423a70c4918e8ccd3af0079f2043165"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a12a58f21c1876ed285b790dfa9116106e502c0a0026c5a07e2e08761762ae00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "959ad45f909a5f938c5b0a5b8f883876b486b37e2182e737c1788971ddaa0403"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5faa522cc903473c6dfb7d8f941f52b0f26a8ebe084f4bfaa1ad3cdccfed64b2"
    end
  end

  def install
    bin.install "clocking"
  end

  test do
    system "#{bin}/clocking", "--version"
  end
end
