class Flexi < Formula
  desc "A minimal CLI tool for tracking your flexi-time balance"
  homepage "https://github.com/thombruce/flexi"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fd18888985c240fed28d83073befeb582cab66020e4fdab3799c8c475d3bf37b"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "cde8c73e7c9f401659f56fee662a6dc0270ad2588ad86babed705c9998e25572"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00793860afd9fbc9261dfaf1cc85c41cecc6fdb21981acf826dea2eccfff0c45"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2246dae8d20f55f5f4973b1e10150b8ab45839ea4810b6df8aeaf6a946fbf4d"
    end
  end

  def install
    bin.install "flexi"
  end

  test do
    system "#{bin}/flexi", "--version"
  end
end
