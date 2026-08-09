cask "cctimer" do
  version "0.1.9"
  sha256 "f38f71a98a3346b799d33709e2e13d5f436d526bfd4a92b86c4404f0ca87108a"

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
