cask "cctimer" do
  version "0.1.5"
  sha256 "b744910c7d6cd44da888bd2e36a0196e159a1d1a10a313aa35afb00a170501fa"

  url "https://github.com/TidyBearLabs/cctimer/releases/download/v#{version}/cctimer-darwin-arm64-#{version}.zip",
      verified: "github.com/TidyBearLabs/cctimer/"
  name "cctimer"
  desc "Claude Code rate limit countdown"
  homepage "https://github.com/TidyBearLabs/cctimer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "cctimer.app"

  zap trash: "~/Library/Application Support/cctimer"
end
