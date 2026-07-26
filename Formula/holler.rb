class Holler < Formula
  desc "A minimal plaintext contacts / rolodex for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1b3509b7933d771f657544c347e5c6211cf8c91f0f31be172952b7ad5f6c90c8"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "12b49dbd8f1f3b0cf5c653f7ed47f018898c7b3cc0dc6676e46ecbdbe05fb0d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9dd2c9f2f3d281ef610bc5634148131ebb25f4ddd0151dd1ad1bae74b318aa6c"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/holler-v#{version}/holler-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af38880a07ea8b3fd5183c5188919a03f98063dea3a00d4bb5ee1e898bca8eaf"
    end
  end

  def install
    bin.install "holler"
  end

  test do
    system "#{bin}/holler", "--version"
  end
end
