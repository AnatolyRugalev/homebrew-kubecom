# This file was generated by GoReleaser. DO NOT EDIT.
class Kubecom < Formula
  desc "kubecom is terminal UI for easy interaction with Kubernetes"
  homepage "https://github.com/AnatolyRugalev/kube-commander"
  version "0.5.5-rc.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/<repo_owner>/<repo_name>/releases/download/0.5.5-rc.2/kubecom_0.5.5-rc.2_darwin_amd64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "b22782983d2b89676f8fd271abfa51d5fffc96ff7a58612ce4e35c52af37f09b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/<repo_owner>/<repo_name>/releases/download/0.5.5-rc.2/kubecom_0.5.5-rc.2_linux_amd64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "00eb0a602b467d67ee323cecf2ca3e79d31acbf5c525bd72d28e1505829bb605"
    end
  end
  
  depends_on "kubectl"

  def install
    bin.install "kubecom"
  end
end
