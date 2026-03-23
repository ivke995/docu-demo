{
  description = "Dev shell with SCE";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    sce = {
      url = "github:crocoder-dev/shared-context-engineering";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, sce, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        inputsFrom = [ sce.devShells.${system}.default or null ];

        shellHook = ''
          echo "sce version: $(sce version)"
        '';
      };
    };
}