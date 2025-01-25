class Toyskkserv < Formula
  desc "Tap of toyskkserv"
  homepage "https://github.com/waynezhang/toyskkserv"
  license "MIT License"
  head "https://github.com/waynezhang/toyskkserv.git", branch: "main"

  depends_on "libiconv"
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "make"
    bin.install "bin/toyskkserv"
  end

  service do
    run [opt_bin/"toyskkserv", "serve"]
    keep_alive true
    log_path var/"log/toyskkserv.log"
    error_log_path var/"log/toyskkserv.log"
  end
end
