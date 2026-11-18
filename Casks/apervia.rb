# Written by the release workflow of the Apervia CLI. Do not edit.
cask "apervia" do
  version "2026.11.18.2"

  on_macos do
    on_arm do
      sha256 "c9035a511ff18972ead7b44aea1a5b6a0ee8d143af634830146ba4322451d288"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "2b692d84cf0e4eda6568b45457dd77fd7799e8a30a27b692624315732baa1389"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "5745060cd7b1d345bd3b32b717564e7d719901e6b1270daabdfd597b85a22a29"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "7949ee3f00d83c49f8556c8a803bd94dac33994189d81a471f3849e0d76abaa0"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_linux_amd64.tar.gz"
    end
  end

  name "Apervia CLI"
  desc "Deploy and operate apps on Apervia"
  homepage "https://apervia.ai/"

  livecheck do
    url "https://downloads.apervia.ai/cli/latest"
    regex(/(\d+(?:\.\d+)+)/)
  end

  binary "apervia"
  binary "apervia", target: "apv"
end
