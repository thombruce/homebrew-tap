class Flexi < Formula
  desc "A minimal CLI tool for tracking your flexi-time balance"
  homepage "https://github.com/thombruce/flexi"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "81fea4371890edb1a874a862717e5cb9900a3035fa4292897305f353d9bc0e5a"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b0e9a946db6187f8df25d8f526903dbc95363e48c03546a4633b437c412277ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1ddd81d3a7f7f583ac05c7352a28e89b1650225d6c2193b04d830b76214d7cd"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a379f5064c63507c6843c8490ea3cf2b52590da4f86c3894abd5135f89e52cd7"
    end
  end

  def install
    bin.install "flexi"
  end

  test do
    assert_match "0 min", shell_output("#{bin}/flexi")
  end
end
