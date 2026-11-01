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
      sha256 "3ed3795fb3ebbf4c07fdbe6287ed5912d5adeb2c14c280086d7b2f80f1048f42"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.5/yourai-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "c5c4480291c4d92dfd80a8eaeefa011e37ed8c58b8d80f18aee19468dde790de"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.5/yourai-v0.0.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "83713b34d1453aaab32f384d17c8a37edac0de61764fb306897e661a5a778e27"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.5/yourai-v0.0.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3cc62c6ad7e89995cbcb90cacf432399c227a330727d3dc84ff964abce4c3af4"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.5", shell_output("#{bin}/yourai --version")
  end
end
