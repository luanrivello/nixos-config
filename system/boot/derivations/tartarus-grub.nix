{ pkgs }:
pkgs.stdenv.mkDerivation {
  name = "tartarus-grub";

  src = pkgs.fetchFromGitHub {
    owner = "AllJavi";
    repo = "tartarus-grub";
    rev = "b116360a2a0991062a4d728cb005dfd309fbb82a";
    sha256 = "sha256-/Pzr0R3zzOXUi2pAl8Lvg6aHTiwXTIrxQ1vscbEK/kU=";
  };

  installPhase = ''
    mkdir -p $out
    cp -R tartarus/* $out/
  '';
}
