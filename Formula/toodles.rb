class Toodles < Formula
  desc "A minimal plaintext todo list for the command line, with due dates"
  homepage "https://github.com/thombruce/flexi"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/toodles-v#{version}/toodles-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a0c2a89b88f74accb02d137ee053e3e87cbf18ff56535acf61f2ebc7f52b8fd2"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/toodles-v#{version}/toodles-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2c95a21fa9d4282d79da368e1a4721c1c00c8cfe876f35a591223a60dbffcf56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/toodles-v#{version}/toodles-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86ff810bd75d3db6eabf16c2f8b2522da4527a9ac0771565018751696c779a53"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/toodles-v#{version}/toodles-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a6bb94f12f9b97e51e108d5ab1ff984cdc9399e44cf09db78fcd6fd1b520f87"
    end
  end

  def install
    bin.install "toodles"
  end

  test do
    system "#{bin}/toodles", "--version"
  end
end
