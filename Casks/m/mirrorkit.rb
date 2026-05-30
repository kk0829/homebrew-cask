cask "mirrorkit" do
  version "1.0.0"
  sha256 "4b11f892eea94e3acd06444f1ac2dc64e712d12aac6715f20db8d7a5db87b2c8"

  url "https://github.com/silica-labs/mirrorkit/releases/download/v#{version}/MirrorKit-v#{version}.dmg", verified: "github.com/silica-labs/mirrorkit"
  name "MirrorKit"
  desc "Developer tool mirror switcher"
  homepage "https://mirrorkit.app/"

  depends_on macos: ">= :sequoia"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MirrorKit.app"
end
