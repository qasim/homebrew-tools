class Flock < Formula
  desc "Rapid file download using concurrent connections"
  homepage "https://github.com/qasim/Flock"
  url "https://github.com/qasim/Flock.git", tag: "0.2.0", revision: "67eca532965bb66eeec146ab803f07a78b02fc2f"
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
