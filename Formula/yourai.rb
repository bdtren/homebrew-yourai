class Yourai < Formula
  desc "Build and run your own local AI"
  homepage "https://yourai.bdtren.com"
  license "Apache-2.0"

  livecheck do
    skip "Platform-specific URLs; check https://yourai.bdtren.com/cli/latest.txt"
  end

  on_macos do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.7/yourai-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "a8507a4eb6020b01a703467dc6443ec1f27592c83febca5672b246d9f7cf7e30"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.7/yourai-v0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "f9ff33110141669d9eef6e656d059ae7783740095d49626ac807ab89eb3f1c8a"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.7/yourai-v0.0.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3df499fafe39df3611eb12964d7b1685e4a58dad4755f85adb013e0c5931436"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.7/yourai-v0.0.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b476ff4c89bbeb0775a31d9cf7c2d5fe952f050617293c436cbbda70786fe048"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.7", shell_output("#{bin}/yourai --version")
  end
end
