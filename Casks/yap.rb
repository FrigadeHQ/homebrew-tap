cask "yap" do
  version "0.1.6"
  sha256 "56381c83409524c03a870d9611bbb1d62d86e10fbe38715611af3916a85b0861"

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
