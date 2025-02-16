{ homeManagerConfig, config, ... }:

{
  home.file.".config/svim".source = homeManagerConfig.linkHostApp config "svim";
}