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
  version "1.3.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.1/zen-osx-arm64.tar.gz"
      sha256 "fde8062a824a329715bc9dac368410584047f0d1d17dc6bba16b844c8d36510d"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.1/zen-osx-x64.tar.gz"
      sha256 "84b3719f64752574942ce1d9fef51d20ed1571c514f69cd130a46ba4327059e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.1/zen-linux-arm64.tar.gz"
      sha256 "8ac77a35c4dc3ae1a1c5d713ab4ad1969067c22650794d7abf06ea9e75b7baff"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.1/zen-linux-x64.tar.gz"
      sha256 "93eeda28e172998f6f72929fd62977d0bc8f0224407949339c724c74a4e8106e"
    end
  end

  def install
    bin.install "zen"
  end

  test do
    system bin/"zen", "--version"
  end
end
