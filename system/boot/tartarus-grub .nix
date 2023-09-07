{ pkgs }:
pkgs.stdenv.mkDerivation {
  name = "tartarus-grub";
  src = pkgs.fetchFromGitHub {
    owner = "AllJavi";
    repo = "tartarus-grub";
    rev = "";
    sha256 = "";
  };

  installPhase = ''
    mkdir -p $out
    cp -R .tartarus/* $out/
  '';
}
