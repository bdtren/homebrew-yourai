class Yourai < Formula
  desc "Build and run your own local AI"
  homepage "https://yourai.bdtren.com"
  license "Apache-2.0"

  livecheck do
    skip "Platform-specific URLs; check https://yourai.bdtren.com/cli/latest.txt"
  end

  on_macos do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.3/yourai-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "5c027795f1f548a779e412828c5a2aa5d4ceb6111630984b8933ca26ae101d75"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.3/yourai-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "7313f04d8a593a655a4074403c665c583e3f967ea07f0a063a99a71fcb523a69"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.3/yourai-v0.0.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86d631ef76c73fc8c9e2d301b5456459c3f049b7ea14b5857fba7fb8da044a02"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.3/yourai-v0.0.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90b20329df43a30b64ac434dfae7f3bac9fcf38fb4e2c85e767620f8d2bb4904"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.3", shell_output("#{bin}/yourai --version")
  end
end
