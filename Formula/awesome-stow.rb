class AwesomeStow < Formula
  desc "TUI wrapper for GNU Stow — manage dotfiles interactively"
  homepage "https://github.com/lthiagol/awesome-stow"
  url "https://github.com/lthiagol/awesome-stow/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
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
