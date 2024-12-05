{
  pkgs,
  username,
  fullname,
  vars,
  lib,
  ...
}:

{
  users.groups = {
    "${username}" = {
      gid = vars.defaultUserGID;
    };
    podman = {
      gid = 994;
    };
  };

  users.users = {
    "${username}" = {
      uid = vars.defaultUserUID;
      group = "${username}";
      description = "${fullname}";
      isNormalUser = true;
      shell = pkgs.zsh;
      extraGroups = [
        "podman"
        "networkmanager"
        "wheel"
        "postgres"
        "grafana"
        "render"
        "video"
      ];
      subUidRanges = [
        {
          startUid = 100000;
          count = 65536;
        }
      ];
      subGidRanges = [
        {
          startGid = 100000;
          count = 65536;
        }
      ];
      openssh.authorizedKeys.keys = [
        ""
      ];
    };
  };
}
