cask "cctimer" do
  version "0.1.4"
  sha256 "87b3ba057dd094cc906b63bf67b4fa4708d398c6b8b24520e8da014e655a2942"

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
