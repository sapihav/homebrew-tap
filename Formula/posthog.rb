class Posthog < Formula
  desc "Community-built CLI for PostHog (unofficial)"
  homepage "https://github.com/sapihav/posthog-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Darwin_arm64.tar.gz"
      sha256 "6d3ef7b1b73f3423cf977ddee1139d51e1d4639004e7b8900b935468a549104f"
    end
    on_intel do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Darwin_x86_64.tar.gz"
      sha256 "b3cf61ebb98bd3aa2f1847d0eea64aef5773fdc1615c5c76300d934a6b06ddeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Linux_arm64.tar.gz"
      sha256 "06573a67dfbc78a77d10b7441f5213c5c999f7b41a9fb4b91f90a0e346d563af"
    end
    on_intel do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Linux_x86_64.tar.gz"
      sha256 "013ce7278192be5f332ccfb4adffe0a8b86c668b8bb3babcc9cc61f4e237497a"
    end
  end

  def install
    bin.install "posthog"
  end

  test do
    assert_match(/posthog/i, shell_output("#{bin}/posthog --help"))
  end
end
