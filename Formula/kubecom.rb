# This file was generated by GoReleaser. DO NOT EDIT.
class Kubecom < Formula
  desc "kubecom is terminal UI for easy interaction with Kubernetes"
  homepage "https://github.com/AnatolyRugalev/kube-commander"
  version "0.5.5-rc.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/<repo_owner>/<repo_name>/releases/download/0.5.5-rc.2/kubecom_0.5.5-rc.2_darwin_amd64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "594c2e90c31c5eedcbc6b4d6141cde4ccc9044ed7cb20a9bf7ef260c6773c972"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/<repo_owner>/<repo_name>/releases/download/0.5.5-rc.2/kubecom_0.5.5-rc.2_linux_amd64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "565ad03f5f9e50e64719cc783bedafcf216adf63dd15e4fbfd87ed68eb4d0033"
    end
  end
  
  depends_on "kubectl"

  def install
    bin.install "kubecom"
  end
end
