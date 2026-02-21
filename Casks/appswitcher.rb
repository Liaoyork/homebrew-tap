cask "appswitcher" do
  version "2.1.0" # 替換：請改成你 GitHub Release 設定的版本號
  sha256 "sha256:78adfb74a69bc7ca9d6fb2cbd14afd2f62cdf689298605a3edab98150df9d4ff"

  # 替換：請將下方 url 換成你第一階段複製的實際下載連結
  url "https://github.com/Liaoyork/AppSwitcher/releases/download/v#{version}/AppSwitcher.zip"
  
  name "AppSwitcher"
  desc "快速切換應用程式的工具"
  homepage "https://github.com/liaoyork/appswitcher"

  # 如果你上傳的是 .dmg，這裡維持 app "AppSwitcher.app" 即可。
  # 如果你上傳的是 .zip，且解壓縮後直接是 app 檔案，這裡也是這樣寫。
  app "AppSwitcher.app"

  # 這段是設定當使用者輸入 brew uninstall 時，要一併清除的設定檔路徑
  zap trash: [
    "~/Library/Preferences/com.liaoyork.AppSwitcher.plist",
    "~/Library/Application Support/AppSwitcher",
  ]
end
