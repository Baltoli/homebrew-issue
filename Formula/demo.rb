class Demo < Formula
  desc "Demo reproduction"
  homepage ""
  url "file:///Users/brucecollie/code/scratch/repro/src.tar.gz"
  version "0.1"

  depends_on "haskell-stack" => :build
  depends_on "llvm@13"#          => :optional

  depends_on "bzip2"
  depends_on "make"
  depends_on "gnu-tar"

  def install
    old_path = ENV["PATH"]

    ENV["PATH"] = ENV["PATH"].sub "#{Formula["llvm@13"].bin}:", ""
    puts ENV["PATH"]
    system "stack", "setup"
    ENV["PATH"] = old_path

    share.install "README.md"
  end

  test do
    system "true"
  end
end
