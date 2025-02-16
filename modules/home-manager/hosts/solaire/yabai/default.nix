{ homeManagerConfig, config, ... }:

{
  home.file.".config/yabai".source = homeManagerConfig.linkHostApp config "yabai";
}