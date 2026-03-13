class RsWgobfs < Formula
  desc "WireGuard obfuscation command line tool, fully compatible with Linux kernel module xt_wgobfs"
  homepage "https://github.com/kknasonov/homebrew-tools"
  url "https://github.com/kknasonov/homebrew-tools/releases/download/v0.6.1/rs-wgobfs-apple-silicon.tar.gz"
  sha256 "03b06e51e2da8229d3c96d420f81f0a355bfcedd02a8a531548670e1e3b6d5ee"
  version "0.6.1"

  def install
    bin.install "rs-wgobfs"
  end

  service do
    run [opt_bin/"rs-wgobfs", "-l", "127.0.0.1:51820", "-f", "127.0.0.1:443", "-k", "DEFAULT_KEY", "-m", "obfs"]
    keep_alive true
    run_at_load true
  end
end
