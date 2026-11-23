class Zoorikctl < Formula
  desc "Connect a Kubernetes cluster to Zoorik"
  homepage "https://zoorik.com"
  version "v0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.0/zoorikctl_v0.5.0_darwin_arm64.tar.gz"
      sha256 "36a44012f7d6b15b266fdac2b3da3826492c4112528f5d7c9224fb8617e8b791"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.0/zoorikctl_v0.5.0_darwin_amd64.tar.gz"
      sha256 "f505ade46ae083d15b3d33b4971c520b7c03b5541f7cd51d894eaa97fb7130c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.0/zoorikctl_v0.5.0_linux_arm64.tar.gz"
      sha256 "f2ca598cddd22d1caf0328a4768b74b7a28b1e139347875f253796ac40663a91"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.0/zoorikctl_v0.5.0_linux_amd64.tar.gz"
      sha256 "61a9c5bbf49d7a18987dc0499933638fce52393c5e7ad01b3f8745ca8ada368a"
    end
  end

  def install
    bin.install "zoorikctl"
  end

  test do
    assert_match "zoorikctl", shell_output("#{bin}/zoorikctl version")
  end
end
