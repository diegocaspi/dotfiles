{ pkgs, ... }:
{
  imports = [
    ./bun.nix
    ./docker.nix
    ./kube.nix
    ./neovim.nix
    ./git.nix
    ./zsh.nix
    ./zellij.nix
    ./direnv.nix
    ./go.nix
  ];

  home.packages = with pkgs; [
    aerospace
    eza
    btop
    starship
    claude-code
    rustup
    devenv
  ];
}
