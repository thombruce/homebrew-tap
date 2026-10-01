class Tonic < Formula
  desc "A git worktree companion"
  homepage "https://github.com/thombruce/tonic"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5bb255962e7f95600b8d5386e1753e7ed9096646692c1d81ca896d1c30e91c07"
    end
    on_intel do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "176055141bf538bcd83f5b6929850606adecc797e9c85b5e4badeec6b0d1bb09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7abc38949b4266fb89530b6ad849abbf65f9f826b574f219c71a308f517becbf"
    end
    on_intel do
      url "https://github.com/thombruce/tonic/releases/download/v#{version}/tonic-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "809c76b532e3cb67560ac3bef09af705f44ae080b314ce44c908cd7ed37a4a8b"
    end
  end

  def install
    bin.install "tonic"
  end

  test do
    system "#{bin}/tonic", "--version"
  end
end
