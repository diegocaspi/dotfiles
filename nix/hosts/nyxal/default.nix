{
  host,
  ...
}:
{

  imports = [
    ../common/global
    ../common/darwin-homebrew.nix
    ../common/users/diegocaspi/darwin.nix
  ];

  security.pam.services.sudo_local.touchIdAuth = true;

  networking = {
    computerName = host;
    localHostName = host;
  };

  system = {
    stateVersion = 6;
    primaryUser = "diegocaspi";

    defaults = {
      dock = {
        autohide = true;
        expose-group-apps = true;
        orientation = "bottom";
        magnification = false;
        mineffect = "genie";
        minimize-to-application = false;
        show-recents = false;
      };

      finder = {
        CreateDesktop = false;
        AppleShowAllExtensions = true;
        FXPreferredViewStyle = "Nlsv";
        FXEnableExtensionChangeWarning = false;
        NewWindowTarget = "Home";
      };

      NSGlobalDomain = {
        KeyRepeat = 1;
        InitialKeyRepeat = 15;

        AppleKeyboardUIMode = 3;
        AppleInterfaceStyle = "Dark";

        NSDocumentSaveNewDocumentsToCloud = false;
      };

      WindowManager = {
        EnableStandardClickToShowDesktop = false;
      };

      screencapture = {
        target = "clipboard";
      };

      controlcenter = {
        BatteryShowPercentage = false;
      };

      SoftwareUpdate.AutomaticallyInstallMacOSUpdates = true;
    };
  };
}
