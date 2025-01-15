class Yaskkserv2 < Formula
  desc "Tap of yaskkserv2"
  homepage "https://github.com/wachikun/yaskkserv2"
  license "Apache 2.0"
  head "https://github.com/wachikun/yaskkserv2.git", branch: "master"

  depends_on "rust"

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/yaskkserv2"
    bin.install "target/release/yaskkserv2_make_dictionary"
  end

  service do
    run [opt_bin/"yaskkserv2", "~/.yaskkserv2/dictionary"]
    keep_alive true
    log_path var/"log/yaskkserv2.log"
    error_log_path var/"log/yaskkserv2.log"
  end
end
