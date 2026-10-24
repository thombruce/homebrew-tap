class InkpotCli < Formula
  desc "The inkpot CLI and language server: render, format, and export .ink documents"
  homepage "https://github.com/thombruce/inkpot"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/inkpot/releases/download/v#{version}/ink-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "56e6315a282f5784536b8a58657d97c5b778545c921b790ee312d05531c243b8"
    end
    on_intel do
      url "https://github.com/thombruce/inkpot/releases/download/v#{version}/ink-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "584cdc0a7c5af7e3f876da210a94b5d871e0a41194b5de5b2fe3c9d24b1c93dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/inkpot/releases/download/v#{version}/ink-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8708b81766e0dcba2b74f483ba1fccda9499dac22990a32d52c310ea924b4d51"
    end
    on_intel do
      url "https://github.com/thombruce/inkpot/releases/download/v#{version}/ink-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abbe5de3861f3d5c180d9a779347bb6cf00d1c03cb6ab912fd346856c596468e"
    end
  end

  def install
    bin.install "ink"
  end

  test do
    system "#{bin}/ink", "--version"
  end
end
