cask "cadence" do
  version "0.9.0"
  sha256 "5f60fbcb05915899713d77ca5f5d48da4d67629f7ec0bc98ad2f5d6a997f89d5"

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
