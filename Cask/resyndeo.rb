# typed: false
# frozen_string_literal: true

# This file is auto-updated by release-desktop.yml. DO NOT EDIT by hand.
cask "resyndeo" do
  arch arm: "arm64", intel: "amd64"

  version "0.39.1"
  sha256 arm:   "6e10f1876f0f95d3693366e17d4c29874d817620c626445440e1bd3fcc8ed62e",
         intel: "296f32e245c068011084ba629be016a47eabf154fcf84d991a8911dcff50f987"

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
