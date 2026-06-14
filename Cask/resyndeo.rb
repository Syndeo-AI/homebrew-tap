# typed: false
# frozen_string_literal: true

# This file is auto-updated by release-desktop.yml. DO NOT EDIT by hand.
cask "resyndeo" do
  arch arm: "arm64", intel: "amd64"

  version "0.35.0"
  sha256 arm:   "66623c44795196aa9d75882cac5d6e64bfdc79fdd21d9dd426eba51f649667b0",
         intel: "1f31bbc170f51b91ae925dfab63884ef0237ca8d18c850146ec784759771407e"

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
