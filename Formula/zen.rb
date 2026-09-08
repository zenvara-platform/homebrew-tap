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
  version "1.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.1.0/zen-osx-arm64.tar.gz"
      sha256 "72d2da9c8e058dd1dab5fa0d54fcd24b8af0fcb382040a7236024dae29f47790"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.1.0/zen-osx-x64.tar.gz"
      sha256 "37df22d940b1c4c6cd4860037927f0c9dcf13fcc937780f60ddc67986028baaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.1.0/zen-linux-arm64.tar.gz"
      sha256 "7a2cdbf51c475f2a954874c923cbf20bb24720fcedce9a02bf1164994cde18dc"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.1.0/zen-linux-x64.tar.gz"
      sha256 "a63cd631f5a49ac432f67fe7ff97d9bf7b6a41e3b0cbf99f8750278acbba1afc"
    end
  end

  def install
    bin.install "zen"
  end

  test do
    system bin/"zen", "--version"
  end
end
