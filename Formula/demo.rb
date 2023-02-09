class Demo < Formula
  desc "Demo reproduction"
  homepage ""
  url "file:///Users/brucecollie/code/scratch/repro/src.tar.gz"
  version "0.1"

  depends_on "haskell-stack" => :build
  depends_on "llvm"          => :optional

  depends_on "bzip2"
  depends_on "make"
  depends_on "gnu-tar"

  def install
    old_path = ENV["PATH"]
    cut_path = ENV["PATH"].sub "/usr/local/opt/llvm/bin:", ""

    ENV["PATH"] = cut_path
    puts ENV["PATH"]
    system "stack", "setup"
    ENV["PATH"] = old_path

    share.install "README.md"
  end

  test do
    system "true"
  end
end
