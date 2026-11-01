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
      sha256 "67c31f2dd3c0b811a74175a6c0c8e87cd9ef9c4008dd143a9fd8dcde4cac2de0"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.3/yourai-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "321aecc5aa79fbe1b9e9d4dee24098f807799dc58880e788fdcc7807b8898e29"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.3/yourai-v0.0.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af05872890be54bbb2e67f99668df5db6b40ee70ebc1c840954d68183f3439bb"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.3/yourai-v0.0.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0e87a59324eda923acebdc1862023f474f89cf9b4527faed33ec913e9b8a7de7"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.3", shell_output("#{bin}/yourai --version")
  end
end
