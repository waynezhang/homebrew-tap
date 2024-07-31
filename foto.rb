# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Foto < Formula
  desc "Yet another another publishing tool for minimalist photographers."
  homepage "https://github.com/waynezhang/foto"
  version "1.4.0"
  license "MIT License"

  on_macos do
    on_intel do
      url "https://github.com/waynezhang/foto/releases/download/v1.4.0/foto_Darwin_x86_64.tar.gz"
      sha256 "159be8118c165584110a635d1456b473e42a6d34ac4c20a4aa8cee5286941792"

      def install
        bin.install "foto"
      end
    end
    on_arm do
      url "https://github.com/waynezhang/foto/releases/download/v1.4.0/foto_Darwin_arm64.tar.gz"
      sha256 "649a9ecac33f0f081a2cbd4505fa8b839c3ab34f95c96f82b2a2d6c242d4b87b"

      def install
        bin.install "foto"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/waynezhang/foto/releases/download/v1.4.0/foto_Linux_x86_64.tar.gz"
        sha256 "432d1a2c187f604eba9ab2066073ed3ceeb545467395e2b48157a4b7292fd60d"

        def install
          bin.install "foto"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/waynezhang/foto/releases/download/v1.4.0/foto_Linux_arm64.tar.gz"
        sha256 "89f0cb2019021538c185741f798b661b24747d4cc048d1db900f23a536aea39b"

        def install
          bin.install "foto"
        end
      end
    end
  end
end
