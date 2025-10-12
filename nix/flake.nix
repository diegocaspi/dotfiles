{
  description = "Diego's system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";

    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    nix-homebrew.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Taps
    homebrew-bundle = {
      url = "github:homebrew/homebrew-bundle";
      flake = false;
    };
  };

  outputs = inputs@{ self, nixpkgs, systems, ... }:
  let
    inherit (self) outputs;

    lib =
      import ./lib {
        inherit
          self
          inputs
          nixpkgs
          outputs
          ;
      }
      // nixpkgs.lib;
    eachSystem = f: lib.genAttrs (import systems) (system: f pkgsFor.${system});
    pkgsFor = lib.genAttrs (import systems) (system: nixpkgs.legacyPackages.${system});
  in
  {
    inherit lib;

    devShells = eachSystem (pkgs: import ./shell.nix { inherit pkgs; });

    darwinConfigurations = {
      nyxal = lib.mkSystem {
        host = "nyxal";
        system = "aarch64-darwin";
        darwin = true;
      };
      lunex = lib.mkSystem {
        host = "lunex";
        system = "aarch64-darwin";
        darwin = true;
      };
    };
  };
}

