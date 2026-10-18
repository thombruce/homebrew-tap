class Bagg < Formula
  desc "A minimal plaintext shopping list / wishlist for the command line"
  homepage "https://github.com/thombruce/flexi"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "70b5fcec878bb29555c9ad375cb1c9c649a630d94c771aff402c93daf28a61b3"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "36eb6265585954e9c5c13fb9b01b21bab748e9f5ed8e5e6e7103b0e2554324e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e583ee437d74f01fef51cfceb7b886993384aa19aca1d96b99ab55964d95b9c"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/bagg-v#{version}/bagg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eda44a10a5f0ca95b3bc8cb259730fda106bacb4923abe0544438fd9d9156496"
    end
  end

  def install
    bin.install "bagg"
  end

  test do
    system "#{bin}/bagg", "--version"
  end
end
