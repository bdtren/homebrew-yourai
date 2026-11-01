class Yourai < Formula
  desc "Build and run your own local AI"
  homepage "https://yourai.bdtren.com"
  license "Apache-2.0"

  livecheck do
    skip "Platform-specific URLs; check https://yourai.bdtren.com/cli/latest.txt"
  end

  on_macos do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.4/yourai-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "3b38ee90bcf6175513800f36c2515bdf0c7ce35b71ea69523f25329dfe59f761"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.4/yourai-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "0f7acacf3b29939de55b8e51a52db3312b699fd39783e75599bb511cf3c97608"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.4/yourai-v0.0.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee8437c3f23bf7b962a2cd7a78950904128606aa5af7e284bc516fa0bd568244"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.4/yourai-v0.0.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78fdde6464bcbd59cc77b277e150d7fa2cd8931a2317bae2cdd12deb8d0e930c"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.4", shell_output("#{bin}/yourai --version")
  end
end
