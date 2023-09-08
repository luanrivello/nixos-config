{ pkgs }:
pkgs.stdenv.mkDerivation {
  name = "fallout-grub";

  src = pkgs.fetchFromGitHub {
    owner = "shvchk";
    repo = "fallout-grub-theme";
    rev = "80734103d0b48d724f0928e8082b6755bd3b2078";
    sha256 = "sha256-7kvLfD6Nz4cEMrmCA9yq4enyqVyqiTkVZV5y4RyUatU=";
  };

  installPhase = ''
    mkdir -p $out
    cp -R ./* $out/
  '';
}
