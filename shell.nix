{ pkgs ? import <nixpkgs> {} }:
let
  nodejsVersion = "16";
  nodejs = pkgs.nodejs-16_*.build.override { };
in pkgs.mkShell {
  buildInputs = with pkgs; [ nodejs ];
}