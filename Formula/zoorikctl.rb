class Zoorikctl < Formula
  desc "Connect a Kubernetes cluster to Zoorik"
  homepage "https://zoorik.com"
  version "v0.4.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.4.5/zoorikctl_v0.4.5_darwin_arm64.tar.gz"
      sha256 "e1929c1ac9f0daa85919f8ba87cff928e3f6cba74690537ca49bbe0db8748847"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.4.5/zoorikctl_v0.4.5_darwin_amd64.tar.gz"
      sha256 "1e20cad6dbbfb0745f318c61de289c5c0e8c4f1287194e7aa11236a829c5acfa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.4.5/zoorikctl_v0.4.5_linux_arm64.tar.gz"
      sha256 "f47ffd202cb2abca99624d074c7736cdfc6082f0b458e6f61d71125e8ebd6431"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.4.5/zoorikctl_v0.4.5_linux_amd64.tar.gz"
      sha256 "7bc8835cbaf5e42ee36e1300f87579532e12842b4c966440058056e53e17cb0e"
    end
  end

  def install
    bin.install "zoorikctl"
  end

  test do
    assert_match "zoorikctl", shell_output("#{bin}/zoorikctl version")
  end
end
