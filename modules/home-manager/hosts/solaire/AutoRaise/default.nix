{ homeManagerConfig, config, ... }:

{
  home.file.".config/AutoRaise".source = homeManagerConfig.linkHostApp config "AutoRaise";
}
