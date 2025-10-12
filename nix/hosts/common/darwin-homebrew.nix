{
  lib,
  inputs,
  ...
}:
{
  imports = [
    inputs.nix-homebrew.darwinModules.nix-homebrew
  ];

  nix-homebrew = {
    user = "diegocaspi";

    taps = {
      "homebrew/homebrew-bundle" = inputs.homebrew-bundle;
    };

    enable = true;
    autoMigrate = true;
    mutableTaps = false;
  };

  homebrew = {
    enable = lib.mkDefault true;

    brews = [
      "azure-cli"
    ];

    casks = [
      "jordanbaird-ice"
      "headlamp"
      "font-fira-code"
      "ghostty"
      "raycast"
      "1password-cli"
    ];

    onActivation = {
      cleanup = "zap";
      autoUpdate = true;
    };

    global = {
      autoUpdate = false;
    };
  };
}
