class Flexi < Formula
  desc "A minimal CLI tool for tracking your flexi-time balance"
  homepage "https://github.com/thombruce/flexi"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "eaa16439767db616ef6e115c57efe40c52bc6814cf128b82dcfb880c9e03484e"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "924db620a01ed4d57bf1f2ddf0ff5911d5092efc5fbf40dc6be3aee391940e04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7323b5ae0b47d2043de0fa099b7f820003f866234cb353acb28ca5a1dae4f46"
    end
    on_intel do
      url "https://github.com/thombruce/flexi/releases/download/v#{version}/flexi-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5577458309d268a617863d5a74f7ad81fc6f3724986ccdfe0c681ebb8726521b"
    end
  end

  def install
    bin.install "flexi"
  end

  test do
    assert_match "0 min", shell_output("#{bin}/flexi")
  end
end
