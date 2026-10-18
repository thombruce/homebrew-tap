class Toodles < Formula
  desc "A minimal plaintext todo list for the command line, with due dates"
  homepage "https://github.com/thombruce/flexi"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/toodles-v#{version}/toodles-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a4017bcdde416b9f721597a1076a83d599c59aa5b77d6db4d4f0747f36023f62"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/toodles-v#{version}/toodles-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b569692d031b49f0a843d97cb2de12263042c314bbc48866246591dea5e27f6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/toodles-v#{version}/toodles-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8910b1fd713ee37e13533cd4dbfc439c1d1818d301174f9882f21bf67c10aee4"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/toodles-v#{version}/toodles-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d394bd55ddfbb4773ae61b7a57fb6c48783184f8c68e448916067c7038e0e23a"
    end
  end

  def install
    bin.install "toodles"
  end

  test do
    system "#{bin}/toodles", "--version"
  end
end
