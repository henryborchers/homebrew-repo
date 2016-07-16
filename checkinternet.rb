class Checkinternet < Formula
  desc "Checks internet once a minute to see the computer has access."
  homepage "https://github.com/henryborchers/checkInternet"
  url "https://github.com/henryborchers/checkInternet/archive/checkInternet_v0.2.0.tar.gz"
  # version "0.1.0"
  # sha256 "19c8ea0f10c26b21efc53baa60946cdeb77af2e0ff8cd087a0a01a793a3898cb"
  sha256 "c2e9f8dec38a996e0f915b0063fd0f816f5d8979961d040e12dcd9431c790b62"

  depends_on :python3

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3/site-packages"
    system "python3", *Language::Python.setup_install_args(prefix)
  end

  test do
    system python3, "setup.py", "test"
  end
end
