class Tonic < Formula
  desc "A git worktree companion"
  homepage "https://github.com/thombruce/tonic"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f996910b59171d958ae18d223a1bda6dca00f0af97598818563125e6b10a1714"
    end
    on_intel do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "066b50bc3df1f2589a30ee89450bb5f5e95cdb9c3b161bb46c6a7e0077ac3201"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "99e17ef26a4461de5c485d22c8ad468610ffb3a58049c3725655f607396134ad"
    end
    on_intel do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6afe03b6521004368e4990bd14a6e0ab57da2d863a82255b256b46944fb944ea"
    end
  end

  def install
    bin.install "tonic"
  end

  test do
    system "#{bin}/tonic", "--version"
  end
end
