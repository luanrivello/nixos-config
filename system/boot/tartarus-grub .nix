{ pkgs }:
pkgs.stdenv.mkDerivation {
  name = "tartarus-grub";

  src = pkgs.fetchFromGitHub {
    owner = "AllJavi";
    repo = "tartarus-grub";
    rev = "b116360a2a0991062a4d728cb005dfd309fbb82a";
    sha256 = "0153z1kylbhc9d12nxy9vpn0spxgrhgy36wy37pk6ysq7akaqlvy";
  };

  installPhase = ''
    mkdir -p $out
    cp -R ./* $out/
  '';
}
