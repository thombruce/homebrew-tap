class Flexi < Formula
  desc "A minimal CLI tool for tracking your flexi-time balance"
  homepage "https://github.com/thombruce/flexi"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7d2b485a314cfea4e84fb37c1feefbcc535c9bf98822ca6578855dd76592cc80"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "318ee0886ce57e24a620b3c51d953b8f19cbc380c8a29fea0330dc431c07fc2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0a4bc1552c858e855e37250f3c8fbdf3e06b2ebb72314ec4758d2b9a920d186"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/flexi-v#{version}/flexi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e2df219c5c4497c1bb3e9e403e62d244b3d3648be3a3e4f9c631b6e15e0a424"
    end
  end

  def install
    bin.install "flexi"
  end

  test do
    system "#{bin}/flexi", "--version"
  end
end
