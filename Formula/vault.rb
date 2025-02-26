class Vault < Formula
  desc "Command Line Utility for managing passwords"
  homepage "https://github.com/fagom/vault-cli"
  version "1.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.12/vault-darwin-amd64.tar.gz"
      sha256 "76241e622bc65c4012bfe5831dfac128da437e4e10aa6c128d3f8c1aff03271b"
    elsif Hardware::CPU.arm?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.12/vault-darwin-arm64.tar.gz"
      sha256 "8d59bb5532bb3dc49e79a5e68f6d0c32b90c605b20dce8525d576cd3ce0427f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.12/vault-darwin-amd64.tar.gz"
      sha256 "f8e81d11987453f3c507f7721958bee4811c289b00cdd171c0d56e35f7d8d1ea"
    elsif Hardware::CPU.arm?
      url "https://github.com/fagom/vault-cli/releases/download/v1.0.12/vault-darwin-arm64.tar.gz"
      sha256 "21c349f7a272e00c5148f8a063a17d1960d1d74ec1ea60ad996603543a29610f"
    end
  end

  def install
    bin.install "vault"
  end

  test do
    system "#{bin}/vault", "--version"
  end
end
