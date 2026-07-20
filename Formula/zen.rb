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
      sha256 "993a8b4d0cb6807a51562f1cdecf9f5423cc30a9f91a723fc854831ce28b4132"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-osx-x64.tar.gz"
      sha256 "27ad51f7cb5f799c0dc7be475dd9913c06b15fee4b9ef20c8a38c76e620fbe3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-linux-arm64.tar.gz"
      sha256 "468f903e1c6edbdb9cbda0163773c064c0dd5a7fec61266e5fbc13b079cd1b50"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-linux-x64.tar.gz"
      sha256 "42ef9f8c70451e16b7e9c816460b40a497a11f099607b9062cda5aaa85f4f128"
    end
  end

  def install
    bin.install "zen"
  end

  test do
    system bin/"zen", "--version"
  end
end
