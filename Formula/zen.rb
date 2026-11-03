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
  version "1.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.2.0/zen-osx-arm64.tar.gz"
      sha256 "1b0d585e014d6d7cb68aa84d1edff05e6789001cca24cd273a11c41117dfb7ca"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.2.0/zen-osx-x64.tar.gz"
      sha256 "a24806d8f3dd23f573c61bb2dfff4f44d22d48ef8891d313a17c2c69f8e78550"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.2.0/zen-linux-arm64.tar.gz"
      sha256 "e9aff1327f7e991b5dc5f5ab5ecfbe410629203aa19ce8ecdd5d8cb372706655"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.2.0/zen-linux-x64.tar.gz"
      sha256 "c74fa7139fc7152b09bf5fd2d28954de0cee40141cca5d8083538242dbd5c3f1"
    end
  end

  def install
    bin.install "zen"
  end

  test do
    system bin/"zen", "--version"
  end
end
