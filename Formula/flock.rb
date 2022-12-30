class Flock < Formula
  desc "Rapid file download using concurrent connections"
  homepage "https://github.com/qasim/Flock"
  url "https://github.com/qasim/Flock.git", tag: "0.1.1", revision: "885c9fbbdabf6d508f86cddc38d8ed864ddf703d"
  license "MIT"
  head "https://github.com/qasim/Flock.git", branch: "main"

  depends_on xcode: :build
  depends_on :macos
  depends_on macos: :monterey
  uses_from_macos "swift"

  def install
    chdir "CLI" do
      system "swift", "build", "--disable-sandbox", "-c", "release"
      bin.install ".build/release/flock"
    end
  end
end
