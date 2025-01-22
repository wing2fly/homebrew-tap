class Libxmlsec1AT127 < Formula
  desc "XML Security Library"
  homepage "https://www.aleksey.com/xmlsec/"
  url "https://www.aleksey.com/xmlsec/download/xmlsec1-1.2.37.tar.gz"
  sha256 "shasum -a 256 xmlsec1-1.2.37.tar.gz"
  license "MIT"

  depends_on "libxml2"
  depends_on "libtool"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/xmlsec1", "--version"
  end
end

