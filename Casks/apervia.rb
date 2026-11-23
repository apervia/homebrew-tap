# Written by the release workflow of the Apervia CLI. Do not edit.
cask "apervia" do
  version "2026.11.23.1"

  on_macos do
    on_arm do
      sha256 "8631ffa6586b0521415b097d249a8c8a6c9d2bfa90af0503e598e95b54c46c4b"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "27ed8e7dd4c35b2fe63a1e010a8a4c4cfc7715daff4169fd917eb4d96ab100da"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "55435d77c326ac0b3488e6a8da573f11184fcca9a30403fcc4086f81e3d1054e"
      url "https://downloads.apervia.ai/cli/#{version}/apervia_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "1d302468038530af262753eec8878315ba4e7ffb44ebf6d8af500160a9210800"
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
