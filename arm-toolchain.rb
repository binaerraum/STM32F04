require 'formula'

class ArmToolchain < Formula
  homepage 'https://launchpad.net/gcc-arm-embedded'
  version '2015.03.20'
  url 'https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q1-update/+download/gcc-arm-none-eabi-4_9-2015q1-20150306-mac.tar.bz2'
  sha256 '049469f06c35d1a7c6d333236bc62ed340531c4377b4e16ce8c5aa8d134e8e8b'

  def install 
    ohai 'Copying binaries...'
    system 'cp', '-rv', 'arm-none-eabi', 'bin', 'lib', 'share', "#{prefix}/"
  end
end
