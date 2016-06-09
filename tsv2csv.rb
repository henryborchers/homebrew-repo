# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Tsv2csv < Formula
  desc "Converts a tsv file to a csv file"
  homepage "https://github.com/henryborchers/"
  url "https://github.com/henryborchers/tsv2csv/archive/tsv2csv_v0.0.3.tar.gz"
  version "0.0.3"
  sha256 "0fa7cecf4ee4e092015e0f40b60da6937207ca2422cf48b78bb1df79e1091b32"

  depends_on :python3

  def install
	system "python3", *Language::Python.setup_install_args(prefix)
  end
end
