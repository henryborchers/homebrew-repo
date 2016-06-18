class Checkinternet < Formula
  desc "Checks internet once a minute to see the computer has access."
  homepage "https://github.com/henryborchers/checkInternet"
  url "https://github.com/henryborchers/checkInternet/archive/checkInternet_v0.1.0.tar.gz"
  version "0.1.0"
  # sha256 "19c8ea0f10c26b21efc53baa60946cdeb77af2e0ff8cd087a0a01a793a3898cb"
  sha256 "1d29bca4c25292519324efa731370b6a9788d8d61bbcd32125209f7ad883f12a"

  depends_on :python3
  
  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3/site-packages"
    system "python3", *Language::Python.setup_install_args(prefix)
  end
end
