class Zoorikctl < Formula
  desc "Connect a Kubernetes cluster to Zoorik"
  homepage "https://zoorik.com"
  version "v0.4.4"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.4.4/zoorikctl_v0.4.4_darwin_arm64.tar.gz"
      sha256 "88fc213877a762bdd9bbebe835dfb68b3d5d50947dc7f4beba5d756a66144212"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.4.4/zoorikctl_v0.4.4_darwin_amd64.tar.gz"
      sha256 "e6d8f86d7cee3c2559dbd2491762d3e501ec8f05b14e75aab251d34ef8552f0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.4.4/zoorikctl_v0.4.4_linux_arm64.tar.gz"
      sha256 "de020569e37f388832a08e0da3e9dd2f9deefaead8f08a61ee4f9946dd8f8610"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.4.4/zoorikctl_v0.4.4_linux_amd64.tar.gz"
      sha256 "9fe1c112d8376e473fff3967bc85b33d75f2d382d36eaeb81240b51ec57088b5"
    end
  end

  def install
    bin.install "zoorikctl"
  end

  test do
    assert_match "zoorikctl", shell_output("#{bin}/zoorikctl version")
  end
end
