# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Toyskkserv < Formula
  desc "A toy SKK skkseev. Just made this for fun."
  homepage "https://github.com/waynezhang/toyskkserv"
  version "0.0.4"
  license "MIT License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/waynezhang/toyskkserv/releases/download/v0.0.4/toyskkserv_Darwin_x86_64.tar.gz"
      sha256 "af593613b62a75ee6de47dca4532c74c9a81b8379a50ca33706a54cfd869c5b0"

      def install
        bin.install "toyskkserv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/waynezhang/toyskkserv/releases/download/v0.0.4/toyskkserv_Darwin_arm64.tar.gz"
      sha256 "e0c54b82358faa4363accdd93141ed44d842a4aebc864c547971d9a98133f937"

      def install
        bin.install "toyskkserv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/waynezhang/toyskkserv/releases/download/v0.0.4/toyskkserv_Linux_x86_64.tar.gz"
        sha256 "f6bd435b72715d5c0cdc03be1f47a2b152ec915d8876b4f4657023f8ac9c13cd"

        def install
          bin.install "toyskkserv"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/waynezhang/toyskkserv/releases/download/v0.0.4/toyskkserv_Linux_arm64.tar.gz"
        sha256 "96af3739da440478cee83eaf3607f4820d43312bc0cb17907e2f1aada214eb6b"

        def install
          bin.install "toyskkserv"
        end
      end
    end
  end

  service do
    run [opt_bin/"toyskkserv", "serve"]
    keep_alive true
    log_path var/"log/toyskkserv.log"
    error_log_path var/"log/toyskkserv.log"
  end
end
