cask "yap" do
  version "0.1.8"
  sha256 "a3c7ff8d752ddc0a8f98b0de2255c331bed2ea4484de607f6229ed26a7fdd34a"

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
