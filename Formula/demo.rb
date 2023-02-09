class Demo < Formula
  desc "Demo reproduction"
  homepage ""
  url "file:///Users/brucecollie/code/scratch/repro/src.tar.gz"
  version "0.1"

  depends_on "haskell-stack" => :build
  depends_on "llvm"          => :optional

  def install
    system "stack", "setup"
    share.install "README.md"
  end

  test do
    system "true"
  end
end
