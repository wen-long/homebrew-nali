class NaliC < Formula
  desc "xxx"
  homepage "https://github.com/wen-long/nali-c"
  url "https://codeload.github.com/wen-long/nali-c/tar.gz/v0.9.1-beta"
  version "0.9.1"
  sha256 "8d73a88523cd243758a1109261b54f73bd874455e3630cb7e4c31c202fa54451"

  depends_on "curl" => :build
  depends_on "unzip" => :build
  depends_on "innoextract" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  def caveats
    "Run `nali-update` to update qqwry.Dat"
  end

  test do
    system "nali", "114.114.114.114"
  end
end
