cask "frely-app" do
  version "0.2.1"
  sha256 "6ed9c19148c2c4bd04f05d4d99c1f8a421b93f1a2cb88fb5f1c48975edf9e7ad"

  url "https://github.com/FrelyHQ/frely-cli/releases/download/frely-app-v#{version}/Frely-App-#{version}-macOS-arm64-ad-hoc-preview.zip"
  name "Frely App"
  desc "Cross-platform Frely client hosting the first-party pi agent runtime"
  homepage "https://github.com/FrelyHQ/frely-cli"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Frely App.app"

  caveats <<~EOS
    This exact Frely App release includes the first-party Pi Node runtime.
    This public Preview is ad-hoc signed and not notarized. Homebrew preserves macOS quarantine metadata and never disables Gatekeeper.
  EOS
end
