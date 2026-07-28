cask "yap" do
  version "0.1.1"
  sha256 "73765868a02638356cd0a461a5be4a95da19007aeef240a0d4da02a0fec28a10"

  url "https://github.com/FrigadeHQ/yap/releases/download/v#{version}/Yap.dmg",
      verified: "github.com/FrigadeHQ/yap/"
  name "Yap"
  desc "On-device voice dictation"
  homepage "https://github.com/FrigadeHQ/yap"

  depends_on macos: :tahoe

  app "Yap.app"

  zap trash: [
    "~/Library/Application Support/Yap",
    "~/Library/Preferences/com.frigade.Yap.plist",
  ]
end
