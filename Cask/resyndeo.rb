# typed: false
# frozen_string_literal: true

# This file is auto-updated by release-desktop.yml. DO NOT EDIT by hand.
cask "resyndeo" do
  arch arm: "arm64", intel: "amd64"

  version "0.34.0"
  sha256 arm:   "d13c262e505e62ea4281ff4d6d644c9dda0d84cc35dd706b1c50ef7041ad55e7",
         intel: "f7a7bbe743c79e464314e12e83cfa9cbdf147e9e1f69d480d17378a64d23e22c"

  url "https://syndeo-releases-dev.s3.us-east-1.amazonaws.com/resyndeo/v#{version}/Resyndeo-darwin-#{arch}.dmg"
  name "Resyndeo"
  desc "Manage your local Resyndeo cluster from the desktop"
  homepage "https://resyndeo.com"

  depends_on formula: "helm@3"
  depends_on formula: "k3d"

  app "Resyndeo.app"
  binary "#{appdir}/Resyndeo.app/Contents/MacOS/resyndeo-cli", target: "resyndeo"

  zap trash: [
    "~/.config/resyndeo",
    "~/Library/Application Support/Resyndeo",
    "~/Library/Logs/Resyndeo",
  ]
end
