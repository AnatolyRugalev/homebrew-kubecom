# This file was generated by GoReleaser. DO NOT EDIT.
class Kubecom < Formula
  desc "kubecom is terminal UI for easy interaction with Kubernetes"
  homepage "https://github.com/AnatolyRugalev/kube-commander"
  version "0.5.5-rc.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/AnatolyRugalev/kube-commander/releases/download/0.5.5-rc.2/kubecom_0.5.5-rc.2_darwin_amd64.tar.gz"
    sha256 "b0ecdd69ed67c9f61df1dc4dce08b52d7fd09d8cf5d728754f9e2268bfe33a7a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/AnatolyRugalev/kube-commander/releases/download/0.5.5-rc.2/kubecom_0.5.5-rc.2_linux_amd64.tar.gz"
      sha256 "0f03710124d4de29b42a6f9cfa839705753566898fe15577f1cce19835a04846"
    end
  end
  
  depends_on "kubectl"

  def install
    bin.install "kubecom"
  end
end
