class Checkinternet < Formula
  desc "Checks internet once a minute to see the computer has access."
  homepage "https://github.com/henryborchers/checkInternet"
  url "https://github.com/henryborchers/checkInternet/archive/checkInternet_v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "19c8ea0f10c26b21efc53baa60946cdeb77af2e0ff8cd087a0a01a793a3898cb"

  depends_on :python3
  
  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3/site-packages"
    system "python3", *Language::Python.setup_install_args(prefix)
  end
end
