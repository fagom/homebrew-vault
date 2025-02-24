class CliPass < Formula
  desc "Command Line Utility for managing passwords"
  homepage "https://github.com/fagom/vault-cli"
  url "https://github.com/fagom/vault-cli/releases/download/v1.0.0/vault-mac"
  sha256 "<MAC_BINARY_SHA256>"
  version "1.0.0"

  def install
    bin.install "vault-mac" => "vault"
  end

  test do
    system "#{bin}/vault", "version"
  end
end
