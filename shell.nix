{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  name = "govhack";
  buildInputs = with pkgs; [ nodePackages.yarn ];
}
