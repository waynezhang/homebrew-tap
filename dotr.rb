# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotr < Formula
  desc "A simple dotfile manager for personal usage."
  homepage "https://github.com/waynezhang/dotr"
  version "0.0.4"
  license "MIT License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/waynezhang/dotr/releases/download/v0.0.4/dotr_Darwin_x86_64.tar.gz"
      sha256 "ffefe1695e4a0a49b877a4281401286d9dc18d2a742393ac248eec2c26e1b758"

      def install
        bin.install "dotr"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/waynezhang/dotr/releases/download/v0.0.4/dotr_Darwin_arm64.tar.gz"
      sha256 "01f6afc0ab6779fc044da2ba189bec3a9be0047a69eb5df492bf4dfb1d6f3a11"

      def install
        bin.install "dotr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/waynezhang/dotr/releases/download/v0.0.4/dotr_Linux_x86_64.tar.gz"
        sha256 "f11931cfbe69c7f193c59e6c60e94307c8e5cdc84033eb839bfd460ead5446a2"

        def install
          bin.install "dotr"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/waynezhang/dotr/releases/download/v0.0.4/dotr_Linux_arm64.tar.gz"
        sha256 "f4b7a77d1a89cdc30dcfb3e6a24f6e509ec8ae1e8642be700fc734a380fd9743"

        def install
          bin.install "dotr"
        end
      end
    end
  end
end
