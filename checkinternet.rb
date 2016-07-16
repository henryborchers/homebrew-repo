class Checkinternet < Formula
  desc "Checks internet once a minute to see the computer has access."
  homepage "https://github.com/henryborchers/checkInternet"
  url "https://github.com/henryborchers/checkInternet/archive/checkInternet_v0.2.0a.tar.gz"
  # version "0.1.0"
  # sha256 "19c8ea0f10c26b21efc53baa60946cdeb77af2e0ff8cd087a0a01a793a3898cb"
  sha256 "6da3681056c4a160049f4ef90139972b1d88859ceba946bd5a228e3ee701f429"

  depends_on :python3

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3/site-packages"
    system "python3", *Language::Python.setup_install_args(prefix)
  end

  test do
    system "python3", "setup.py", "test"
  end
end
