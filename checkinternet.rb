class Checkinternet < Formula
  desc "Checks internet once a minute to see the computer has access."
  homepage "https://github.com/henryborchers/checkInternet"
  url "https://github.com/henryborchers/checkInternet/archive/checkInternet_v0.2.6.tar.gz"
  sha256 "6510f8c85043958ba0bad92ae6667ab7e2aa55a4b1763e2ec67ffd9655d5482b"

  depends_on :python3

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3/site-packages"
    system "python3", *Language::Python.setup_install_args(prefix)
    system "python3", "setup.py", "test"
  end
end
