{ pkgs, lib, config, inputs, ... }:

{
  packages = [ pkgs.git pkgs.stow ];

  languages.nix.enable = true;

  scripts = {
    update-flake = {
      exec = "cd nix && nix flake update";
      description = "Update the flake in the nix folder";
    };

    apply-nix = {
      exec = "cd nix && sudo nix run --extra-experimental-features nix-command --extra-experimental-features flakes nix-darwin -- switch --flake .#nyxal";
      description = "Apply the configuration using stow";
    };

    clean = {
      exec = "nix-collect-garbage -d";
      description = "Clean the nix store";
    };

    apply-stow = {
      exec = "stow .";
      description = "Apply the configuration using stow";
    };
  };
}
