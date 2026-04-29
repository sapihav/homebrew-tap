class Posthog < Formula
  desc "Community-built CLI for PostHog (unofficial)"
  homepage "https://github.com/sapihav/posthog-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Darwin_arm64.tar.gz"
      sha256 "9cc45a08c508654571aca043504dfaaf86eaff10dff6e2a5eb51c3a0e3e94ab1"
    end
    on_intel do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Darwin_x86_64.tar.gz"
      sha256 "476cc51e619517a67582c2a070fa2f3d6afd9b96b8b0c62ac57139362c9c748a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Linux_arm64.tar.gz"
      sha256 "97b45d874695be146436c443a3fe5305ef45b012bcfd5df19bf3ec2be1363f4c"
    end
    on_intel do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Linux_x86_64.tar.gz"
      sha256 "7604dfd0dc0281983843b338b6586cb82ef8dfe720b96c56b76dab4f54c73ecc"
    end
  end

  def install
    bin.install "posthog"
  end

  test do
    assert_match(/posthog/i, shell_output("#{bin}/posthog --help"))
  end
end
