# zen — Homebrew formula. Generated from cli-source packaging/homebrew/zen.rb.tmpl
# by the release workflow; do not edit by hand.
#
# Install:  brew install zenvara-platform/tap/zen
#
# Proprietary, prebuilt binary — downloads the official release archive per
# OS/arch and installs the `zen` executable; it never builds from source.
class Zen < Formula
  desc "Lightweight cross-platform CLI for Zenvara"
  homepage "https://github.com/zenvara-platform/cli"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-osx-arm64.tar.gz"
      sha256 "8542c6c4b220610159542831d0be03375104dcf1f34880cc25093dc9915fe3c7"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-osx-x64.tar.gz"
      sha256 "3d0421f48da95c870dc88d2eab9301ac7c2b601c166568941e2fe5507eb37025"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-linux-arm64.tar.gz"
      sha256 "2048daa94f0556694eeb6abe899e6c58507feada07e198d25c865683e42067f7"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-linux-x64.tar.gz"
      sha256 "e24cacf7f0578465544d4ca3f96d766439e8b4a42477fa6d5eaf1b15b7f66ee7"
    end
  end

  def install
    bin.install "zen"
  end

  test do
    system bin/"zen", "--version"
  end
end
