class Calchemy < Formula
  desc "A minimal plaintext calendar and appointment book for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9845296f6cae7a82ae005892221f15b56278043b6266bd22e8c6c398b731b850"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d2090bcf04fb47e8816d9fd1d8bb73b3147062de2b412904f89744e6deacb617"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dbf686065bacc2cd0c7496b8bd7fe8160591e1fd54a351e42c0c6ec3525e8831"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/calchemy-v#{version}/calchemy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0743b687706bcb280146057bb324cff0930de79ecd29f113add9ca792b59cd70"
    end
  end

  def install
    bin.install "calchemy"
  end

  test do
    system "#{bin}/calchemy", "--version"
  end
end
