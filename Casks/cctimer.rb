cask "cctimer" do
  version "0.1.10"
  sha256 "08b05bf2c693225ecb1f4116e10c7b8fba15ca71ff64fe8abde47ceeb2bf78ce"

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
