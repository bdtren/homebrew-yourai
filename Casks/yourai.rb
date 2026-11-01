cask "yourai" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.0.1"
  sha256 arm:   "9a19d2b88db1c0d677c985e1842f26e8d8231243c5c037089c24e2947a705549",
         intel: "5ff7ab5ed1c004239f3b9108cc3f3ed69e95cda7b174a28a090711f8ebdbd214"

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
