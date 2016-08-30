class Checkinternet < Formula
  desc "Checks internet once a minute to see the computer has access."
  homepage "https://github.com/henryborchers/checkInternet"
  url "https://github.com/henryborchers/checkInternet/archive/checkInternet_v0.2.5.tar.gz"
  sha256 "0335f2b3397fe699167e4fe89599d3a86ac05f583c319e792297f1f6052fee12"

  depends_on :python3

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3/site-packages"
    system "python3", *Language::Python.setup_install_args(prefix)
    system "python3", "setup.py", "test"
  end
end
