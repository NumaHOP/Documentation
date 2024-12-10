{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {flake-utils, nixpkgs, ...} @ inputs: 
  flake-utils.lib.eachDefaultSystem (system:
  let 
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        mdbook
        mdbook-mermaid
        mdbook-footnote
        watchexec
        openapi-generator-cli
      ];
    };
  });
}
