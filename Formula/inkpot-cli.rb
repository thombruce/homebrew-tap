class InkpotCli < Formula
  desc "The inkpot CLI and language server: render, format, and export .ink documents"
  homepage "https://github.com/thombruce/inkpot"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/inkpot/releases/download/v#{version}/ink-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7602913223de9195b26c6b3a58fa234213f01db3022746c6795b02658a5b60c0"
    end
    on_intel do
      url "https://github.com/thombruce/inkpot/releases/download/v#{version}/ink-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e2ea9d9e4b24a0f82049f9c9c8303a4a60ef27c04dda83dce1b0dba9e933c93d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/inkpot/releases/download/v#{version}/ink-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "622355502a2994dbf007e3166560281a51f2a2f5a11742c2d9bd16f2003b888e"
    end
    on_intel do
      url "https://github.com/thombruce/inkpot/releases/download/v#{version}/ink-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6fc5c77c6360414fd2090270786c50854b7a532e48a293bab47675c141010ef4"
    end
  end

  def install
    bin.install "ink"
  end

  test do
    system "#{bin}/ink", "--version"
  end
end
