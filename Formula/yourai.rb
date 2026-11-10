class Yourai < Formula
  desc "Build and run your own local AI"
  homepage "https://yourai.bdtren.com"
  license "Apache-2.0"

  livecheck do
    skip "Platform-specific URLs; check https://yourai.bdtren.com/cli/latest.txt"
  end

  on_macos do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.1.0/yourai-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "870be8933810aa7c53265577ee68300f0e5e4fd4bb53eeb0c69ce7dbfc14b3a0"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.1.0/yourai-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "9fbe387ffc07fc09d10ec02b0f5a726b9e992a6b04c0c5c135e3ec831a394bdf"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.1.0/yourai-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b606312be4803055b1b09b4b7931c5114edc375c2553688feb55ea95841cb33c"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.1.0/yourai-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "430ffba758cfc41aaebaf1f6c35b877fd2c7a423d370d444ef2a64fd6d6c64eb"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/yourai --version")
  end
end
