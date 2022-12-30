class Flock < Formula
    desc "Rapid file download using concurrent connections"
    homepage "https://github.com/qasim/Flock"
    url "https://github.com/qasim/Flock.git", tag: "0.1.0", revision: "8b6ccf3be606cc08fbcc7290d61a83946e7acc91"
    license "MIT"
    head "https://github.com/qasim/Flock.git", branch: "main"

    depends_on xcode: :build
    depends_on :macos
    depends_on macos: :monterey
    uses_from_macos "swift"

    def install
        system "swift", "build", "--disable-sandbox", "-c", "release"
        bin.install ".build/release/flock"
    end
end
