class Checkinternet < Formula
  desc "Checks internet once a minute to see the computer has access."
  homepage "https://github.com/henryborchers/checkInternet"
  url "https://github.com/henryborchers/checkInternet/archive/checkInternet_v0.2.7.tar.gz"
  sha256 "f80fde30ef71a8836fbdb4660fc1ea8c33db980f1e1fae23059e2e0e3288bd16"

  depends_on :python3

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3/site-packages"
    system "python3", *Language::Python.setup_install_args(prefix)
    system "python3", "setup.py", "test"
  end
end
