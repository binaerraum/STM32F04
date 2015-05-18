require 'formula'

class ArmToolchain < Formula
  homepage 'https://launchpad.net/gcc-arm-embedded'
  version '2015.03.20'
  url 'https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q1-update/+download/gcc-arm-none-eabi-4_9-2015q1-20150306-mac.tar.bz2'
  md5 'e3d92e5eaac7f9b0c20bf69822a434dd'

  def install 
    ohai 'Copying binaries...'
    system 'cp', '-rv', 'arm-none-eabi', 'bin', 'lib', 'share', "#{prefix}/"
  end
end
