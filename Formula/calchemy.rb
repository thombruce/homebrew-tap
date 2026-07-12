class Calchemy < Formula
  desc "A minimal plaintext calendar and appointment book for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2dca660f1e17f7a4bc46c9932de19eea7140248f6442b4bb755cca745a424627"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9ee819ce59e52e0124e1321706a26e5b4f3c8f06dd7056cb556e45ae4f18dd49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c71945b8044d09226cb48cea1a58ba0c138dec8b393494770c5d5148a7ed37ac"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e2ec87a757f2c22a34444a4f8f064a812cd3d76e053c3012c8e9259cddcec3f"
    end
  end

  def install
    bin.install "calchemy"
  end

  test do
    system "#{bin}/calchemy", "--version"
  end
end
