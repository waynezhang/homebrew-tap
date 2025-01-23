class Tskks < Formula
  desc "Tap of tsskks"
  homepage "https://github.com/waynezhang/tskks"
  license "MIT License"
  head "https://github.com/waynezhang/tskks.git", branch: "main"

  depends_on "libiconv"
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "make"
    bin.install "bin/tskks"
  end

  service do
    run [opt_bin/"tskks", "serve", "-v"]
    keep_alive true
    log_path var/"log/tskks.log"
    error_log_path var/"log/tskks.log"
  end
end
