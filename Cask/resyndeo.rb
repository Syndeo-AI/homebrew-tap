# typed: false
# frozen_string_literal: true

# This file is auto-updated by release-desktop.yml. DO NOT EDIT by hand.
cask "resyndeo" do
  arch arm: "arm64", intel: "amd64"

  version "0.37.1"
  sha256 arm:   "850a88c3af138a2b1bfd60937a8af655a912942d0a29179a4b2d8169362eb4a2",
         intel: "ab1e8ea67a5f93bd5c67436edff4660ceddc15d4261da5d091e15047017792b6"

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
