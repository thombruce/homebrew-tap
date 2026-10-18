class Flexi < Formula
  desc "A minimal CLI tool for tracking your flexi-time balance"
  homepage "https://github.com/thombruce/flexi"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4068840da72457349ff552e74985ce45b52dc2d641685d01fa073f34de21fadd"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1e3c4cebe64e28b6ba73802d2e493fe2702a21aaf2b627c55d41640005a811d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c09cb8dff71d1f291bcc0b8a8101836696a366f0b141cd3e991ca6275798142"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64e48ec81b8c1a71927201c83b3940cf68cf5ca252df78b90d856c4503e1df09"
    end
  end

  def install
    bin.install "flexi"
  end

  test do
    system "#{bin}/flexi", "--version"
  end
end
