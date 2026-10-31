class Yourai < Formula
  desc "Build and run your own local AI"
  homepage "https://yourai.bdtren.com"
  license "MIT"

  livecheck do
    url "https://yourai.bdtren.com/cli/latest.txt"
    strategy :page_match
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  on_macos do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.1/yourai-v0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "81ccf7a92b9e5d8ca19cc27df0bb7cebd1fb4f9712358d69cf950d8133aea406"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.1/yourai-v0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "e36dc12dfed88891d3badacd4aa89c8082958fd3c0b40fb3ab62e59318d2c5bd"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.1/yourai-v0.0.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c0fcaaed226823d120f393cfd1206d9787f7811282e4f662116626fe264f79f"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.1/yourai-v0.0.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d58573656408cc514bbbdd61b60a4227c264b62b164bca89634e9b6fb3d2b002"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.1", shell_output("#{bin}/yourai --version")
  end
end
