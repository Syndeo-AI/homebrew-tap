# typed: false
# frozen_string_literal: true

# This file is auto-updated by release-desktop.yml. DO NOT EDIT by hand.
cask "resyndeo" do
  arch arm: "arm64", intel: "amd64"

  version "0.31.1"
  sha256 arm:   "8b309950c5cca1f3a1b450ade005dd30e719747d13d24580d651ad8a212ba584",
         intel: "PENDING"

  url "https://syndeo-releases-dev.s3.us-east-1.amazonaws.com/resyndeo/v#{version}/Resyndeo-darwin-#{arch}.dmg"
  name "Resyndeo"
  desc "Manage your local Resyndeo cluster from the desktop"
  homepage "https://resyndeo.com"

  app "Resyndeo.app"
  binary "#{appdir}/Resyndeo.app/Contents/MacOS/resyndeo-cli", target: "resyndeo"

  zap trash: [
    "~/.config/resyndeo",
    "~/Library/Application Support/Resyndeo",
    "~/Library/Logs/Resyndeo",
  ]
end
