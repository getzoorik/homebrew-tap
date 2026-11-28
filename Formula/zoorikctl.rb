class Zoorikctl < Formula
  desc "Connect a Kubernetes cluster to Zoorik"
  homepage "https://zoorik.com"
  version "v0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.6.1/zoorikctl_v0.6.1_darwin_arm64.tar.gz"
      sha256 "e06e7756dd7dc415b28c0a0454262dc768df496fcd50040b97f07dacca6442a6"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.6.1/zoorikctl_v0.6.1_darwin_amd64.tar.gz"
      sha256 "5d890530a9d9fd34be62b708e7a39e432894e1badbcec034349e881b0ef011ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.6.1/zoorikctl_v0.6.1_linux_arm64.tar.gz"
      sha256 "80bedc7ed39076ae6888e4eb47e0dc04b34e5aaccba5fda8315b41a4c0b62ad7"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.6.1/zoorikctl_v0.6.1_linux_amd64.tar.gz"
      sha256 "e546541b3611f82b41d5c0d959cb6b8c2b25158ffcef24aa95f7a0c7aa2b33bf"
    end
  end

  def install
    bin.install "zoorikctl"
  end

  test do
    assert_match "zoorikctl", shell_output("#{bin}/zoorikctl version")
  end
end
