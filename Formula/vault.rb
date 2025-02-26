class CliPass < Formula
  desc "Command Line Utility for managing passwords"
  homepage "https://github.com/fagom/vault-cli"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.0/vault-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"
    elsif Hardware::CPU.arm?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.0/vault-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.0/vault-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"
    elsif Hardware::CPU.arm?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.0/vault-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
  end

  def install
    bin.install "vault"
  end

  test do
    system "#{bin}/vault", "--version"
  end
end
