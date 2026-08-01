cask "yap" do
  version "0.1.9"
  sha256 "347d4b51cd7fab4a087a6cfe4a56457e4b186098a7eb96840cca887203c4b2f6"

  url "https://github.com/FrigadeHQ/yap/releases/download/v#{version}/Yap.dmg",
      verified: "github.com/FrigadeHQ/yap/"
  name "Yap"
  desc "On-device voice dictation"
  homepage "https://github.com/FrigadeHQ/yap"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Yap.app"

  zap trash: [
    "~/Library/Application Support/Yap",
    "~/Library/Preferences/com.frigade.Yap.plist",
  ]
end
