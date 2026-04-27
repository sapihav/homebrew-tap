class Posthog < Formula
  desc "Community-built CLI for PostHog (unofficial)"
  homepage "https://github.com/sapihav/posthog-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Darwin_arm64.tar.gz"
      sha256 "52140f17fb907e5d29fc4d036ddff9ee6e87be04ca2f3e66770f58f68296a4f3"
    end
    on_intel do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Darwin_x86_64.tar.gz"
      sha256 "e46162b0c67495c7c3aaee360aa4101c937378b6802fb1eff6d7865cc0024cd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Linux_arm64.tar.gz"
      sha256 "221988d0eb8793601ab2ff136e49d9054ee3d757aa2183b84068b533ebd29d46"
    end
    on_intel do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Linux_x86_64.tar.gz"
      sha256 "1a5cc45a6125d72a5aaf757aa7cba04f60215a4aa0fa5a63aa52b03f8e432eaf"
    end
  end

  def install
    bin.install "posthog"
  end

  test do
    assert_match(/posthog/i, shell_output("#{bin}/posthog --help"))
  end
end
