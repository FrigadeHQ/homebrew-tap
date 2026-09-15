cask "yap" do
  version "0.1.12"
  sha256 "c600cad9120cbd7ec463d001f002ba3e6cfdf2445577cb957d4166d62824b28e"

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
