class Libxmlsec1AT1241 < Formula
  desc "XML Security Library"
  homepage "https://www.aleksey.com/xmlsec/"
  url "https://www.aleksey.com/xmlsec/download/xmlsec1-1.2.41.tar.gz"
  sha256 "a0aecfdf1f190c6b866a278e42746b6582729a493f6ac6a1556a4663ff3ce625"
  license "MIT"

  depends_on "libxml2"
  depends_on "libtool"

  def install
    openssl = Formula["openssl@3"]
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--with-openssl=#{openssl.opt_prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/xmlsec1", "--version"
  end
end
