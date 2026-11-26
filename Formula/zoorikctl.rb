class Zoorikctl < Formula
  desc "Connect a Kubernetes cluster to Zoorik"
  homepage "https://zoorik.com"
  version "v0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.2/zoorikctl_v0.5.2_darwin_arm64.tar.gz"
      sha256 "8bcd27fc66ab6b1120417d46f5604c38e2863c4fff88175eddf0a9ab1fcc6e18"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.2/zoorikctl_v0.5.2_darwin_amd64.tar.gz"
      sha256 "c6828940c61c55e9d1ad280b61eaa11ad8c07ea2f9af57eb78536ce7deb77670"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.2/zoorikctl_v0.5.2_linux_arm64.tar.gz"
      sha256 "0aa39232b031ee5e1a3a0f67841aab2f11bed860a8ea7bcb141fb76d2edf5023"
    end
    on_intel do
      url "https://github.com/getzoorik/zoorikctl/releases/download/v0.5.2/zoorikctl_v0.5.2_linux_amd64.tar.gz"
      sha256 "16385bc63529e4acbb73c5d857d10b744fec4fa076c3645db32eb67dc214dd9f"
    end
  end

  def install
    bin.install "zoorikctl"
  end

  test do
    assert_match "zoorikctl", shell_output("#{bin}/zoorikctl version")
  end
end
