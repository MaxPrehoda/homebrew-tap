cask "cadence" do
  version "0.13.1"
  sha256 "f754aadf29f14bae55b6dd3f838b1e30dacf5b5c14d3ad7d29e6a855ce7e61d8"

  url "https://github.com/MaxPrehoda/cadence-landing/releases/download/v#{version}/Cadence_#{version}_aarch64.dmg"
  name "Cadence"
  desc "Inbox and toolbar for AI coding agents, with on-device dictation"
  homepage "https://cadencevoice.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Cadence.app"

  zap trash: [
    "~/Library/Application Support/Cadence",
    "~/Library/Application Support/com.cadence.app",
    "~/Library/Caches/cadence",
    "~/Library/Caches/com.cadence.app",
    "~/Library/WebKit/cadence",
    "~/Library/WebKit/com.cadence.app",
  ]
end
