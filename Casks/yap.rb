cask "yap" do
  version "0.1.0"
  sha256 "075cff7d38e26667f9e9b1d61a4c34d35402655ba65e71cdc693bb7d004b124b"

  url "https://github.com/FrigadeHQ/yap/releases/download/v#{version}/Yap.dmg",
      verified: "github.com/FrigadeHQ/yap/"
  name "Yap"
  desc "On-device voice dictation for macOS"
  homepage "https://github.com/FrigadeHQ/yap"

  depends_on macos: :tahoe

  app "Yap.app"

  zap trash: [
    "~/Library/Application Support/Yap",
    "~/Library/Preferences/com.frigade.Yap.plist",
  ]
end
