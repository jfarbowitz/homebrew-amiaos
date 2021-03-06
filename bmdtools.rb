require 'formula'
 
class Bmdtools < Formula
  homepage 'http://github.com/lu-zero/bmdtools'
  url 'https://github.com/lu-zero/bmdtools/archive/v0.1.zip'
  sha256 'd79b4a9e4a1e6c5e4b54847015af6ff9f19ace586d50ce95068d790ebcbb79ec'
  head 'https://github.com/lu-zero/bmdtools.git'
 
  env :std
 
  depends_on 'pkg-config' => :build
  depends_on "ffmpeg" => [ 'with-ffplay', 'with-openjpeg', 'with-libass', 'with-freetype', 'with-faac' ]
  depends_on 'amiaopensource/amiaos/decklinksdk' => :build
  depends_on 'libav' => :build
 
  def install
     system "make", "SDK_PATH=/usr/local/include", "SYS=Darwin"
     bin.install 'bmdcapture'
     bin.install 'bmdgenlock'
     bin.install 'bmdplay'
  end
end
