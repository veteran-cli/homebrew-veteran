class Veteran < Formula
  desc "SOCKS5 proxy client with subscription support"
  homepage "https://laogou.us"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://laogou.us/download/veteran/v1.0.0/veteran_1.0.0_darwin_amd64.tar.gz"
      sha256 "0292d5fc7b0e5216bc3ba48405f4eceb139b29f7810444c54fb6d49ac0a6a22b"
    elsif Hardware::CPU.arm?
      url "https://laogou.us/download/veteran/v1.0.0/veteran_1.0.0_darwin_arm64.tar.gz"
      sha256 "3b60f793e000dd802feb2cc1bacbdb495d13f18f3b4aba3d76e51ccb4a1abc66"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://laogou.us/download/veteran/v1.0.0/veteran_1.0.0_linux_amd64.tar.gz"
      sha256 "56aac95e2aeb8d0995109cb95a5e7f74afc051310ce695c9ae6cc9050cfb4d30"
    end
  end

  def install
    bin.install "veteran"
  end

  test do
    system "#{bin}/veteran", "version"
  end
end
