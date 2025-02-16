{ homeManagerConfig, config, ... }:

{
  home.file.".config/skhd".source = homeManagerConfig.linkHostApp config "skhd";
}