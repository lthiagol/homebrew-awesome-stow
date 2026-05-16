class AwesomeStow < Formula
  desc "TUI wrapper for GNU Stow — manage dotfiles interactively"
  homepage "https://github.com/lthiagol/awesome-stow"
  url "https://github.com/lthiagol/awesome-stow/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b50526f3158496c3cc5f9740b561819116e53c3c0bf62d9cf55c34c18074ea7c"
  license "MIT"

  depends_on "rust" => :build
  depends_on "stow"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "stow-tui"
  end

  test do
    system "#{bin}/awesome-stow", "--help"
  end
end
