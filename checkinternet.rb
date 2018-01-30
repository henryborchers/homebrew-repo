class Checkinternet < Formula
  desc "Checks internet once a minute to see the computer has access."
  homepage "https://github.com/henryborchers/checkInternet"
  url "https://github.com/henryborchers/checkInternet/archive/checkInternet_v0.2.9.tar.gz"
  sha256 "6baa2c005695ead62daf6d569915b7b0c45c8c724cf0a4f7ca3b3502a6ec6431"

  depends_on :python_3

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3/site-packages"
    system "python3", *Language::Python.setup_install_args(prefix)
    system "python3", "setup.py", "test"
  end
end
