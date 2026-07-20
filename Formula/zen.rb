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
      sha256 "875ada6e389f387b71aa81f73e99f0243f6fe039a4c30462df6709443f927af8"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-osx-x64.tar.gz"
      sha256 "0fa2b78fb32d2f733f4432f30fe6289f7f4032add4b54d449e2ecbc1210867b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-linux-arm64.tar.gz"
      sha256 "b2d6a3b6d1a96880c06f4920e9edc026d87fe0f63d61cf7ef437c17a3d56e9f2"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-linux-x64.tar.gz"
      sha256 "c465ae1ea3759b3fc2a6947f5ee50f7b176f8c913f532a4cc3e84aac435f6165"
    end
  end

  def install
    bin.install "zen"
  end

  test do
    system bin/"zen", "--version"
  end
end
