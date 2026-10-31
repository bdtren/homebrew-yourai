cask "yourai" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.0.1"
  sha256 arm:   "c3c0e94a3802d21b83397e3a51b93361c6a05453f593313e85900e72a308d7a1",
         intel: "e5330f9403fc5191362f8561a735ebddbea8a1262826cdc3e94fdd9244a4ea97"

  url "https://yourai.bdtren.com/cli/releases/v#{version}/yourai-v#{version}-#{arch}-apple-darwin.tar.gz"
  name "YourAI"
  desc "Build and run your own local AI"
  homepage "https://yourai.bdtren.com"

  livecheck do
    url "https://yourai.bdtren.com/cli/latest.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  binary "yourai"

  zap trash: "~/.yourai"
end
