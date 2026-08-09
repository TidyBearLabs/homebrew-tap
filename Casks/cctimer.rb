cask "cctimer" do
  version "0.1.8"
  sha256 "1a9185355f64984d6ad5f7f96b419998a30c812acb6883f5c663a4d552137462"

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
