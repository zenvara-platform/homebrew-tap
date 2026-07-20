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
      sha256 "fb97bf9a89665eb29991a2fdb0c3dc4ae8859512d11703b8b1daa353158715b2"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-osx-x64.tar.gz"
      sha256 "71876100a3a1e408528b562ed6723d56107dd8128584da2be7eff647831ce3c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-linux-arm64.tar.gz"
      sha256 "a8ed4ba0f7085d45e66461648336e22d1dfd4c8dbb82fe7f89ddc03aa9df3562"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.0.0/zen-linux-x64.tar.gz"
      sha256 "2e778a1b0c2b8a38c5afea22a2983a6cdcbce9631aa6708a5229eddcd5534530"
    end
  end

  def install
    bin.install "zen"
  end

  test do
    system bin/"zen", "--version"
  end
end
