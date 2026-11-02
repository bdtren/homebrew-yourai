class Yourai < Formula
  desc "Build and run your own local AI"
  homepage "https://yourai.bdtren.com"
  license "Apache-2.0"

  livecheck do
    skip "Platform-specific URLs; check https://yourai.bdtren.com/cli/latest.txt"
  end

  on_macos do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.8/yourai-v0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "23dc85cb543ba9cefb7c2ffe929a2abb608ca2d8cca3a8559d3c97db4969b330"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.8/yourai-v0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "cb176b4dea2c43bb11c695fd3e8db423222dd88873352c0b6332d1157b654fcf"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.8/yourai-v0.0.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e82936e7ebb91a3effb61fc632c1054aabe30c0fc53f1d8839870a0c258785b1"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.8/yourai-v0.0.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e81041f626f25762844ff7cbd5625e988ce045fab852a54d23843291279d9f8"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.8", shell_output("#{bin}/yourai --version")
  end
end
