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
  version "1.3.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.2/zen-osx-arm64.tar.gz"
      sha256 "0929eaa8a00c5f8222a664d469c8de098e680de11d8295d49f4e07b8ab17b583"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.2/zen-osx-x64.tar.gz"
      sha256 "32992a69522f0e8a1ebfcaa66c89c69f833a3013b3a1433e915ca4c967dca769"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.2/zen-linux-arm64.tar.gz"
      sha256 "44d107b281186c9f249bc694eda5833fa6a45f5b9a6ca5bd2f249a2006a5797f"
    end
    on_intel do
      url "https://github.com/zenvara-platform/cli/releases/download/1.3.2/zen-linux-x64.tar.gz"
      sha256 "bcab7fc10be68fb48c9c664894d8fd8662aff10d51321941e44b2edc794f758f"
    end
  end

  def install
    bin.install "zen"
  end

  test do
    system bin/"zen", "--version"
  end
end
