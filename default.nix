{ pkgs ? import <nixpkgs> {} }:

let
  nodejsVersion = "16.0.0";
  nodejs = pkgs.nodejs-16_0;

in pkgs.mkShell {
  buildInputs = with pkgs; [ nodejs ];
}