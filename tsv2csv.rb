class Tsv2csv < Formula
  desc "Converts a tsv file to a csv file"
  homepage "https://github.com/henryborchers/"
  url "https://github.com/henryborchers/tsv2csv/archive/tsv2csv_v0.0.4.tar.gz"
  version "0.0.4"
  sha256 "5b58c487b5141353b5936e935506226dea667c9e3dee4bac99a4cc20249ef674"

  depends_on :python3

  def install
  ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3/site-packages"
	system "python3", *Language::Python.setup_install_args(prefix)
  end
end
