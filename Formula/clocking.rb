class Clocking < Formula
  desc "A minimal CLI tool for logging your working hours"
  homepage "https://github.com/thombruce/flexi"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "aa90ccf4d305defb65912ec89d8db8f2baafbc2b1fb9d136e15c4205067810e8"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "49e0dd96fe633a2375b15255bd1fa46e0ca79ef2e3700f5e1b18d7049051ff12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c109c3ef0bbc72dbe8c665f7e43de59819ae79f3b2fcce3dab4e85058e52591f"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/clocking-v#{version}/clocking-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9281db8ac9b1c24c1459a7efac753506ada1f466e1734f973844486e4424d6f8"
    end
  end

  def install
    bin.install "clocking"
  end

  test do
    system "#{bin}/clocking", "--version"
  end
end
