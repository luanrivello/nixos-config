{ pkgs }:
pkgs.stdenv.mkDerivation {
  name = "tartarus-grub";

  src = pkgs.fetchFromGitHub {
    owner = "AllJavi";
    repo = "tartarus-grub";
    rev = "b116360a2a0991062a4d728cb005dfd309fbb82a";
    sha256 = "0pa0w0124y07w1xjrr973nhak8p9p5j1rpaxzrlw2waczpdn1g3k";
  };

  installPhase = ''
    mkdir -p $out
    cp -R tartarus/* $out/
  '';
}
