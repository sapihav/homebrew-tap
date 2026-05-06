class Posthog < Formula
  desc "Community-built CLI for PostHog (unofficial)"
  homepage "https://github.com/sapihav/posthog-cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Darwin_arm64.tar.gz"
      sha256 "75c9e7780e2ec0d903efa57f575a1ea4f62f289ed0d2421ebf119c63775f47a5"
    end
    on_intel do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Darwin_x86_64.tar.gz"
      sha256 "8837fdeb93d777e991c31aa414b7086684508bb70df79bb409e85151b7c2e091"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Linux_arm64.tar.gz"
      sha256 "15bcb687a77932b23759cb2ec5bd981f774eb946010fe456fe977931b570bf62"
    end
    on_intel do
      url "https://github.com/sapihav/posthog-cli/releases/download/v#{version}/posthog-cli_Linux_x86_64.tar.gz"
      sha256 "cbeaa1b7b4cd3ed93ac8126672240587425064e92102e6c9fe54713919e313e3"
    end
  end

  def install
    bin.install "posthog"
  end

  test do
    assert_match(/posthog/i, shell_output("#{bin}/posthog --help"))
  end
end
