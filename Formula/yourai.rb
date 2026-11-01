class Yourai < Formula
  desc "Build and run your own local AI"
  homepage "https://yourai.bdtren.com"
  license "Apache-2.0"

  livecheck do
    skip "Platform-specific URLs; check https://yourai.bdtren.com/cli/latest.txt"
  end

  on_macos do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.2/yourai-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "6896625efe4d5e9e4c5a0309004c8c9ce56686471e176a0a4c77f78d073ca005"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.2/yourai-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "728cc9d36d04e813c7cf0a05642cc1968dfe1c3d3814312e980e0792c089f58a"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.2/yourai-v0.0.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d5ca93d96a203fa0dfffff895c5442d5d865dfd4538decd6b86bc8d0e102ef4"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.2/yourai-v0.0.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43a8a25c61264628150ecc4452657dc49cab87bef0340c1048ddf9b19f499804"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.2", shell_output("#{bin}/yourai --version")
  end
end
