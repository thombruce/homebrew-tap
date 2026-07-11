class Flexi < Formula
  desc "A minimal CLI tool for tracking your flexi-time balance"
  homepage "https://github.com/thombruce/flexi"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fb28d043784aabfc64343db7bd9568f60e8aa8a3c6b02bc6c56f8f64bdad321c"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "137f382e372144f13b6801291045319f3064b1a827845ec8f5e5dc0af1e48e9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "596fe8a53ce99a9434f449b6dab89c6d99f98948c5b4c0db9a83f339e3727e8b"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85a95d55989329399a3686ab64067dfb8af3cd359e7c30405c77b0a18e86501d"
    end
  end

  def install
    bin.install "flexi"
  end

  test do
    system "#{bin}/flexi", "--version"
  end
end
