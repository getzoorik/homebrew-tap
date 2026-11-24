class Zoorikctl < Formula
  desc "Connect a Kubernetes cluster to Zoorik"
  homepage "https://zoorik.com"
  version "v0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.1/zoorikctl_v0.5.1_darwin_arm64.tar.gz"
      sha256 "4f650027ac8cd61673f0027d7eff5b2fc1314b8643bb1e1ca7f8b7b484bbed4b"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.1/zoorikctl_v0.5.1_darwin_amd64.tar.gz"
      sha256 "11a7d6ffd61641e37ae995763c1a94d01095b37083e56578bdfef0cd1a5dbb29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.1/zoorikctl_v0.5.1_linux_arm64.tar.gz"
      sha256 "c1a91ed87ec2316495a4028da6fb77a153d8eced41be0ae544a174db1ff7e845"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.1/zoorikctl_v0.5.1_linux_amd64.tar.gz"
      sha256 "567dac41c27980eb5e7d1f16a0e90d81b81972e92bc16ca44077cfa67c8384ac"
    end
  end

  def install
    bin.install "zoorikctl"
  end

  test do
    assert_match "zoorikctl", shell_output("#{bin}/zoorikctl version")
  end
end
