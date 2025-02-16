{ homeManagerConfig, config, ... }:

{
  home.file.".config/starship".source = homeManagerConfig.linkHostApp config "starship";
}