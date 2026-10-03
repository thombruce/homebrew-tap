class Tonic < Formula
  desc "A git worktree companion"
  homepage "https://github.com/thombruce/tonic"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d4381517d49cd0cdb376127b1bc71646b2c2ab2f639597f47c19c51c04af99bb"
    end
    on_intel do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "186e9a8e3421dcb42628104cef24c01b3fae2c425026015651381b787f078ee8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0cb97f8771a99cb6a64ccfb9b4233ebfe1bff2e2248a40789b9f94745c82ad82"
    end
    on_intel do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f45a2e84fdb0d762e8dbd2a38b1d14e30cf3a5233e0488fcb3c715b3cc5de6f"
    end
  end

  def install
    bin.install "tonic"
  end

  test do
    system "#{bin}/tonic", "--version"
  end
end
