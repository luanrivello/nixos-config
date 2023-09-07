{ pkgs }:

let
  image = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/luanrivello/.dotfiles/main/interface/Interface/wallpapers/d_jod1lXsVCEtLhFFnzvrSqsgkj0P_6jAIYEa7UNXHI.jpg";
    sha256 = "sha256-/D3bNd4nOTRuHFbCyMNF3aLVsm/sGSN7xSWHPb4fqtc";
  };
in
pkgs.stdenv.mkDerivation {
  name = "sddm-theme";

  src = pkgs.fetchFromGitHub {
    owner = "MarianArlt";
    repo = "sddm-sugar-dark";
    rev = "ceb2c455663429be03ba62d9f898c571650ef7fe";
    sha256 = "0153z1kylbhc9d12nxy9vpn0spxgrhgy36wy37pk6ysq7akaqlvy";
  };

  installPhase = ''
    mkdir -p $out
    cp -R ./* $out/
    cd $out/
    rm Background.jpg
    cp -r ${image} $out/Background.jpg
  '';
}
