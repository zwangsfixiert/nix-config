# Edit this configuration file to define what should be installed on

# your system.    Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ hostname, config, username, pkgs, rustPlatform, ... }:

{
    imports =
        [
            ./hardware-configuration.nix
            ../../system/general.nix
            ../../system/hyprland.nix
            ../../system/sddm.nix
            ../../system/steam.nix
        ];

    networking.hostName = nixos; # Define your hostname.
    system.stateVersion = "24.05"; # Did you read the comment?

    services.xserver.enable = true;
}
