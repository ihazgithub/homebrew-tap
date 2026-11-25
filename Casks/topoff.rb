cask "topoff" do
  version "2.2.3"
  sha256 "45b63cbec9c143a2acb3a310ea235472827e56719b57a8bc15d130b4a142f221"

  url "https://github.com/ihazgithub/TopOff/releases/download/v#{version}/TopOff-v#{version}.dmg"
  name "TopOff"
  desc "Menu bar app for keeping Homebrew packages up to date"
  homepage "https://github.com/ihazgithub/TopOff"

  livecheck do
    url "https://raw.githubusercontent.com/ihazgithub/TopOff/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TopOff.app"

  zap trash: [
    "~/Library/Caches/com.topoff.TopOff",
    "~/Library/Caches/TopOff",
    "~/Library/HTTPStorages/com.topoff.TopOff",
    "~/Library/Preferences/com.topoff.TopOff.plist",
  ]
end
