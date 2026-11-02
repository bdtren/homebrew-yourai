class Yourai < Formula
  desc "Build and run your own local AI"
  homepage "https://yourai.bdtren.com"
  license "Apache-2.0"

  livecheck do
    skip "Platform-specific URLs; check https://yourai.bdtren.com/cli/latest.txt"
  end

  on_macos do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.6/yourai-v0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "81d83a2a2ef7fbb053707721b4cc8685b8828e86b26e0927c6a93e36fd96ac0c"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.6/yourai-v0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "1f54dd3f30160585da8f683cbaf4c4522e2cdf28f8cd92f927596dcbb3639aba"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.6/yourai-v0.0.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb6c8e2480ec04b82c4ce706fd31eceeeb488d91b9649de9145952c869b54e22"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.6/yourai-v0.0.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f49bfa677e6afc037c7b0bc97f8911cc45f7d10b35b0add6f1410e85daf2a6bf"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.6", shell_output("#{bin}/yourai --version")
  end
end
