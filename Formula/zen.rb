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
  version "1.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.0/zen-osx-arm64.tar.gz"
      sha256 "0484d5fc6b07bed2eb166d0266d52661e3d580872f86ce59a4449d416b3c3110"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.0/zen-osx-x64.tar.gz"
      sha256 "fbf963b08aab0997da747f22e5f6b7e136dfb9655f1b123c76506854bb6ec890"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.0/zen-linux-arm64.tar.gz"
      sha256 "4def7fd0e282d81ea0198920a280922f085b78d9fbec6ac1321ff3fd2f14aa7f"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.0/zen-linux-x64.tar.gz"
      sha256 "d5ab2afee9519c5d531adfefe49255094286f9ff725a716e2ff1688eebbe45d2"
    end
  end

  def install
    bin.install "zen"
  end

  test do
    system bin/"zen", "--version"
  end
end
