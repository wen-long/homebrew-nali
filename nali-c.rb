class NaliC < Formula
  desc "Port of nali to C: Add ip location info on text stream"
  homepage "https://github.com/wen-long/nali-c"
  url "https://github.com/wen-long/nali-c/archive/0.9.2-beta.tar.gz"
  version "0.9.2"
  sha256 "48f525771313b27370742ff31b3fec16529747992094e7a153492533acc24715"

  depends_on "python3" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  def caveats
    "Run `nali-update` to update QQWry.Dat\nQQWry.Dat is updated every 5 days offically"
  end

  test do
    system "nali", "114.114.114.114"
  end
end
