cask "cadence" do
  version "0.8.0"
  sha256 "3ac52ce51a1d170e82fe7c087162c8f91e1638deb6b90e37b29754ea968e7008"

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
