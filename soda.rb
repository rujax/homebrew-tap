# frozen_string_literal: true

class Soda < Formula
  desc 'A Tasty Treat For All Your Database Needs (v6.1.2 By Rujax Chen)'
  homepage 'https://github.com/rujax/pop'
  version '6.1.2'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rujax/pop/releases/download/v6.1.2/soda_6.1.2_darwin_arm64.tar.gz'
      sha256 '7bb5b65a196a1a698d66441540b34fc04072c173006818b50d01d23201196aca'

      def install
        bin.install 'soda'
      end
    end

    if Hardware::CPU.intel?
      url 'https://github.com/rujax/pop/releases/download/v6.1.2/soda_6.1.2_darwin_amd64.tar.gz'
      sha256 'e983acc7775c28032664bf9585a2d3bcb6324c84702b6df647707f3a291b4b70'

      def install
        bin.install 'soda'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/rujax/pop/releases/download/v6.1.2/soda_6.1.2_linux_amd64.tar.gz'
      sha256 '1ec35425e6ec760df40603af6966c1dcdc7a45c96339f567e782794b07fd4dfb'

      def install
        bin.install 'soda'
      end
    end
  end
end
