{ pkgs, ... }:
let
  darwinHelm = pkgs.buildEnv {
    name = "helm-darwin";
    paths = [ pkgs.kubernetes-helm ];
    meta.platforms = [ "aarch64-darwin" ];
  };
in
{
  home.packages = with pkgs; [
    kubectl
    kubectx
    darwinHelm
    k9s
    krew
    kuttl
    kind
  ];
}
