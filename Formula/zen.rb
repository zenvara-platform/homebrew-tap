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
      sha256 "8eb2c1487bff68a54bfd69fccee2e054558a2d7417d7e3c220ce16b6074d6b1a"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-osx-x64.tar.gz"
      sha256 "31782a177902d2c3cc26a7a7cf236860ad31274eab70380f1651f4703ae9b8c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-linux-arm64.tar.gz"
      sha256 "c141cc322dbd4d5f7ead30964a7baff41211ad4c2b5081e5e7d67d73482a2d0f"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-linux-x64.tar.gz"
      sha256 "a19da5865cba4b303bc3b48dbe37c36153eaee26ae822d9bae640fcda97064ce"
    end
  end

  def install
    bin.install "zen"
  end

  test do
    system bin/"zen", "--version"
  end
end
