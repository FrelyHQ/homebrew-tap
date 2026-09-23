cask "pi-client" do
  version "0.0.3"
  sha256 "44ca05689220759ae1ca45bb7fbb8aa049874449604918f670d03d6bf53f5623"

  deprecated!

  url "https://github.com/Hu-Wentao/pi-client/releases/download/v#{version}/Pi-Client-#{version}-macOS-universal.zip"
  name "Pi Client"
  desc "Cross-platform Flutter client for the pi coding agent (renamed to Frely Client)"
  homepage "https://github.com/Hu-Wentao/pi-client"

  depends_on macos: :big_sur

  app "Pi Client.app"

  caveats <<~EOS
    Pi Client is deprecated and renamed to Frely Client. Future releases are
    distributed as "frely-client" via frelyhq/tap/frely-client.

    Pi Client #{version} is an unsigned, unnotarized Preview. Homebrew preserves
    macOS quarantine metadata, so Gatekeeper will reject a normal first launch.

    In Finder, Control-click /Applications/Pi Client.app, select Open, then
    confirm Open. Do not remove quarantine metadata or disable Gatekeeper.

    This Preview still uses the transitional pi-web compatibility boundary.
    The first-party Pi host runtime and transport remain under development.
  EOS
end
