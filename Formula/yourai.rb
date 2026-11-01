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
      sha256 "d8a06ff68138be991862016d8c1625351d2bb8a9b1af8a12fb04c112fc2ed5da"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.2/yourai-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "52f7b83a1a737cc0dcf37ccdb23908989f043ff6fd099b1a75133b3e1b841d99"
    end
  end

  on_linux do
    on_arm do
      url "https://yourai.bdtren.com/cli/releases/v0.0.2/yourai-v0.0.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ef499bbed6a1b1466a439a4b7b3fed55be848cd4a1800d871ae39c4cb4dcb018"
    end
    on_intel do
      url "https://yourai.bdtren.com/cli/releases/v0.0.2/yourai-v0.0.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dfdea4ba9f0aedd81e635f74e1d6bf8b68f2b48231f3d378673dfd0fe54f47e3"
    end
  end

  def install
    bin.install "yourai"
  end

  test do
    assert_match "0.0.2", shell_output("#{bin}/yourai --version")
  end
end
