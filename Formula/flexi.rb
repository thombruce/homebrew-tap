class Flexi < Formula
  desc "A minimal CLI tool for tracking your flexi-time balance"
  homepage "https://github.com/thombruce/flexi"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "698f171fd7dcc70772c06edd9617c02c071aac990893a20b0ed3afc6c3acba87"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "366cf84b37e28565bfca95ace0aaa53751b9177f56dc540787b6d2e4b4842d9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ea9b1e509285c58f269f078f2e64d93c444166e01072d308108b47d9ccd87f8"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9088e3bd2aa2df621f81d4d5ff6ed82436d01f9e2284131ceb84131e29134234"
    end
  end

  def install
    bin.install "flexi"
  end

  test do
    assert_match "0 min", shell_output("#{bin}/flexi")
  end
end
