class Zoorikctl < Formula
  desc "Connect a Kubernetes cluster to Zoorik"
  homepage "https://zoorik.com"
  version "v0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.6.0/zoorikctl_v0.6.0_darwin_arm64.tar.gz"
      sha256 "c830c380899a860be6f173a67e36984e175be03834b7cd17e1c68e70ffc73678"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.6.0/zoorikctl_v0.6.0_darwin_amd64.tar.gz"
      sha256 "08ad8c7da1316c9c357411b56bca21c4705d330bc4404fcd22656f3ddd72e859"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.6.0/zoorikctl_v0.6.0_linux_arm64.tar.gz"
      sha256 "b292b941277f4555dc8d1b12cdb68c577707b964fd6df1b43f79a6802c151b94"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.6.0/zoorikctl_v0.6.0_linux_amd64.tar.gz"
      sha256 "b6bd001d6a109953efe192ccee3bbea97fdf21406f76af98a8b73ea91b6b0079"
    end
  end

  def install
    bin.install "zoorikctl"
  end

  test do
    assert_match "zoorikctl", shell_output("#{bin}/zoorikctl version")
  end
end
