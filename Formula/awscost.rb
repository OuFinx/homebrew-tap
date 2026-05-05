class Awscost < Formula
  desc "Terminal UI for exploring AWS costs"
  homepage "https://github.com/OuFinx/awscost"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/OuFinx/awscost/releases/download/v1.0.0/awscost_1.0.0_darwin_arm64.tar.gz"
      sha256 "b21d090a3ce32accfb4aacf9ecd9a88719938e73bdf1e3d040702a98cc4d61b4"
    end
    on_intel do
      url "https://github.com/OuFinx/awscost/releases/download/v1.0.0/awscost_1.0.0_darwin_amd64.tar.gz"
      sha256 "0a69cbdd49246b7ed2c76f8d039cf0e1e75d2d55824851b425e8dcaa7428cf49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OuFinx/awscost/releases/download/v1.0.0/awscost_1.0.0_linux_arm64.tar.gz"
      sha256 "dc2a230d8500582266e2015e4cc57b0815444a273084d8779e0e5f5ff2259012"
    end
    on_intel do
      url "https://github.com/OuFinx/awscost/releases/download/v1.0.0/awscost_1.0.0_linux_amd64.tar.gz"
      sha256 "410fb78b567e9da4939d3b1ced424b968aa4d7c8dbdd7111ef6392d5193fc0be"
    end
  end

  def install
    bin.install "awscost"
  end

  test do
    system "#{bin}/awscost", "-version"
  end
end
