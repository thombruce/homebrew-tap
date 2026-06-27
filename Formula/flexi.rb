class Flexi < Formula
  desc "A minimal CLI tool for tracking your flexi-time balance"
  homepage "https://github.com/thombruce/flexi"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "38d057da234c24bb5a68e9bae34f9b00e10c7b78b9c940b9ea6316078ad9571d"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e30e631eebda8c4049df63f154cb58329f14bed7a3416a25b06650372669dd85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2bbd4d8ba5442860b34371822203d2f033d39dc5b5643d5ea701c9f045c7322"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6309744a71c2448933cdec31160e3601b7332f58d434d8cccbca0608c4aa21d7"
    end
  end

  def install
    bin.install "flexi"
  end

  test do
    assert_match "0 min", shell_output("#{bin}/flexi")
  end
end
