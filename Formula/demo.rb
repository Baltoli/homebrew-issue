class Demo < Formula
  desc "Demo reproduction"
  homepage ""
  url "file:///Users/brucecollie/code/scratch/repro/src.tar.gz"
  version "0.1"

  depends_on "haskell-stack" => :build
  depends_on "llvm"          => :optional

  def install
    old_path = ENV["PATH"]
    ENV["PATH"].sub! "/usr/local/opt/llvm/bin:", ""
    system "stack", "setup"
    ENV["PATH"] = old_path
    share.install "README.md"
  end

  test do
    system "true"
  end
end
