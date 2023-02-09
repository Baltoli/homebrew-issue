class Demo < Formula
  desc "Demo reproduction"
  homepage ""
  url "file:///Users/brucecollie/code/scratch/repro/src.tar.gz"
  version "0.1"

  # depends_on "boost" => :build
  # depends_on "cmake" => :build
  depends_on "haskell-stack" => :build
  # depends_on "maven" => :build
  # depends_on "pkg-config" => :build
  # depends_on "bison"
  # depends_on "flex"
  # depends_on "fmt"
  # depends_on "gmp"
  # depends_on "jemalloc"
  # depends_on "libyaml"
  # depends_on "llvm@15"
  # depends_on "mpfr"
  # depends_on "openjdk"
  # depends_on "z3"

  def install
    # ENV["SDKROOT"] = MacOS.sdk_path
    # ENV["DESTDIR"] = ""
    # ENV["PREFIX"] = prefix.to_s
    # ENV["HOMEBREW_PREFIX"] = HOMEBREW_PREFIX

    # puts ENV["PATH"]
    # raise 1

    # # Unset MAKEFLAGS for `stack setup`.
    # # Prevents `install: mkdir ... ghc-7.10.3/lib: File exists`
    # # See also: https://github.com/brewsci/homebrew-science/blob/bb52ecc66b6f9fad4d281342139189ae81d7c410/Formula/tamarin-prover.rb#L27
    ENV.deparallelize do
      system "stack", "setup"
    end

    # system "mvn", "package", "-DskipTests", "-Dproject.build.type=FastBuild"
    # system "package/package"

    share.install "README.md"
  end

  test do
    system "true"
  end
end
