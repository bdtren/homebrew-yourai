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
      sha256 "0f06143afce1e6409d555989a1a5bb0183b0314cc0503b84e06e5a94f6480287"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.4/yourai-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "725cc26c7370dc57fe3a9d454ad88c1cd1452f3559ffa8dd0d31c305219e0e78"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.4/yourai-v0.0.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eea8b40579322f8351f55d2c475a379c0b9564ffc7ac5f6f257271e7dc348df0"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.4/yourai-v0.0.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "900c766664ae18a91151b38246fbf850cc560ca2cb66723d49b29f14b48d00c8"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.4", shell_output("#{bin}/yourai --version")
  end
end
