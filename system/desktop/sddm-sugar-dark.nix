{ pkgs }:
let
  image = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/luanrivello/.dotfiles/main/interface/Interface/wallpapers/d_jod1lXsVCEtLhFFnzvrSqsgkj0P_6jAIYEa7UNXHI.jpg";
    sha256 = "";
  };
in
pkgs.stdenv.mkDerivation {
  name = "sddm-sugar-dark";
  src = pkgs.fetchFromGitHub {
    owner = "MarianArlt";
    repo = "sddm-sugar-dark";
    rev = "ceb2c455663429be03ba62d9f898c571650ef7fe";
    sha256 = "0153z1kylbhc9d12nyx9vpn0spxgrhgy36wy37pk6ysq7akaqlvy";
  };

  installPhase = ''
    mkdir -p $out
    cp -R ./* $out/
  '';
}