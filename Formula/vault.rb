class Vault < Formula
  desc "Command Line Utility for managing passwords"
  homepage "https://github.com/fagom/vault-cli"
  version "1.0.22"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.22/vault-darwin-amd64.tar.gz"
      sha256 ""
    elsif Hardware::CPU.arm?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.22/vault-darwin-arm64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.22/vault-darwin-amd64.tar.gz"
      sha256 ""
    elsif Hardware::CPU.arm?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.22/vault-darwin-arm64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "vault"
  end

  test do
    system "#{bin}/vault", "--version"
  end
end
