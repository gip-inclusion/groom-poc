{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "meet conf";
  buildInputs = [
    pkgs.nodejs
  ];
  shellHook = ''
    npm install @google-apps/meet @google-cloud/local-auth@2.1.0 --save
  '';
}