class Flexi < Formula
  desc "A minimal CLI tool for tracking your flexi-time balance"
  homepage "https://github.com/thombruce/flexi"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f39ad0f4cad2f511eb4b0f33d822a77ceb5c0fd6539c418abfa01432f9248a38"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0f05df97a7efc1632d552e7e91a2eb46c1437ebc62e4185dcb17bcae5ff4b24a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df5c50551983a341c971c55b21a5d39a47e627d61dca4a1178819855ca6461bf"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd4d64fdb690e5d5ac984476cffb9621ec0713dbd6ef2ee2aa30bb315e5532fb"
    end
  end

  def install
    bin.install "flexi"
  end

  test do
    assert_match "0 min", shell_output("#{bin}/flexi")
  end
end
