# Written by the release workflow of the Apervia CLI. Do not edit.
cask "apervia" do
  version "2026.11.27.1"

  on_macos do
    on_arm do
      sha256 "92bdf7010d59639ee9057c667fd86ef3624ab2b6d78fee625d56c99ca08dee1e"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "32e4e4ee255c5c7e2347670469ef07c979b5b292435f85848c76323b5de631bf"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "a5bbcd1e6eff6b0cfd3dca5d1a4c3ce1f9be53acc54bc170c94d9e85bf1c60d4"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "f932c7260cc3bb9f6cf6feb470cbd7c1a5479782de77a1ce67608a424957277c"
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
  binary "apervia", target: "docker-credential-apervia"
end
