cask "cadence" do
  version "0.7.0"
  sha256 "eba886136d52a6b5b2555afa3971cc0b1cf082c860a807f8a929423691170045"

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
