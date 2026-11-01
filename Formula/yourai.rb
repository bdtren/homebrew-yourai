class Yourai < Formula
  desc "Build and run your own local AI"
  homepage "https://yourai.bdtren.com"
  license "Apache-2.0"

  livecheck do
    skip "Platform-specific URLs; check https://yourai.bdtren.com/cli/latest.txt"
  end

  on_macos do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.5/yourai-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "7993009ef2d10993fcfb709b077d15c06c76f3d447304faedf388ccd6a7d5c50"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.5/yourai-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "6f3958003eae107e465fe69100f18476079608285ff42890a0eadfd3810cfb98"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.5/yourai-v0.0.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "32c3436bf1417e9c546bd125d49a090ffca8470c0af0c9a51ada1378b248c29d"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.5/yourai-v0.0.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "30c7fa6fbba7675d6d59fed2d6f65f7ea66aa6c111bc698d4e8b3550b25fa369"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.5", shell_output("#{bin}/yourai --version")
  end
end
