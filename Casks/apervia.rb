# Written by the release workflow of the Apervia CLI. Do not edit.
cask "apervia" do
  version "2026.11.18.3"

  on_macos do
    on_arm do
      sha256 "a7c49f6aee8575730a8ff6a081fec47affc75db91bc03b56622f41eb688b76ef"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "26a033fce4517d257622e83df743a59d6e9240b56c3f954c0064858dc1ebea2f"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "86fa135228372ef16215583b0f1ab1ced48aab0e628f158c02c413c6286cee86"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "50fa18802e12a5c32a4a724fe0692bf4a479e447eb0025ef5bf02269b5217952"
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
