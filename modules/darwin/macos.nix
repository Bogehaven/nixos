# Configuration for macOS-specific settings
{ username, ... }:

{
  # Enable Touch ID authentication for sudo
  security.pam.enableSudoTouchIdAuth = true;

  system = {
    # Keyboard settings
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToControl = true;
    };

    defaults = {
      # clock
      menuExtraClock.Show24Hour = true;
      menuExtraClock.ShowSeconds = false;

      # https://github.com/LnL7/nix-darwin/blob/master/modules/system/defaults/trackpad.nix
      trackpad = {
        # tap to click
        Clicking = true;
        # tap-tap-drag to drag
        Dragging = true;
        # two-finger-tap right click
        TrackpadRightClick = true;
      };

      # Global macOS system preferences
      NSGlobalDomain = {
        AppleShowAllExtensions = true;          # Show all file extensions
        ApplePressAndHoldEnabled = false;       # Disable press-and-hold for keys in favor of key repeat
        KeyRepeat = 2;                          # Set key repeat rate (lower is faster)
        InitialKeyRepeat = 15;                  # Set delay until key repeat begins
        "com.apple.mouse.tapBehavior" = 1;      # Enable tap to click
        "com.apple.sound.beep.volume" = 0.0;    # Disable system beep
        "com.apple.sound.beep.feedback" = 0;
        _HIHideMenuBar = false;
      };

      # Dock configuration
      dock = {
        appswitcher-all-displays = true;        # Show app switcher on all displays
        autohide = false;                        # Automatically hide and show the Dock
        autohide-delay = 0.0;                   # Remove delay for showing Dock
        autohide-time-modifier = 0.15;          # Speed up Dock show/hide animation
        orientation = "bottom";                  # Place Dock at the bottom
        tilesize = 22;                          # Set Dock icon size
        largesize = 96;
        launchanim = false;                     # Disable launch animation
        magnification = false;                   # Enable magnification
        minimize-to-application = true;         # Minimize windows into application icon
        show-process-indicators = true;         # Show indicators for open applications
        show-recents = false;                   # Don't show recent applications
        showhidden = true;                      # Show indicators for hidden applications
        static-only = false;                    # Show all active applications
        dashboard-in-overlay = false;           # Disable dashboard overlay
        persistent-apps = [                     # Apps that persist in Dock even when closed
          "/Applications/Warp.app"
          "/Applications/Arc.app"
          "/System/Applications/Mail.app"
          "/Applications/Spotify.app"
          "/Applications/Cursor.app"
          "/Applications/ChatGPT.app"
          "/Applications/Claude.app"
          "/Applications/Obsidian.app"
        ];
        expose-animation-duration = 0.2;        # Mission Control animation speed
        expose-group-apps = true;              # Group windows by application in Mission Control
        wvous-bl-corner = 1;                   # Bottom-left hot corner action
        wvous-br-corner = 4;                   # Bottom-right hot corner action
        wvous-tl-corner = 1;                   # Top-left hot corner action
        wvous-tr-corner = 12;                  # Top-right hot corner action
        mru-spaces = false;                    # Don't automatically rearrange spaces
      };

      # Finder configuration
      finder = {
        _FXShowPosixPathInTitle = false;       # Don't show full POSIX path in Finder window title
        _FXSortFoldersFirst = true;            # Show folders first in Finder
        AppleShowAllExtensions = true;         # Show all file extensions
        AppleShowAllFiles = false;             # Hide hidden files
        CreateDesktop = false;                 # Hide desktop icons
        FXDefaultSearchScope = "SCcf";         # Default to current folder for search
        FXEnableExtensionChangeWarning = false; # Don't warn when changing file extensions
        FXPreferredViewStyle = "Nlsv";         # Default to list view in Finder
        QuitMenuItem = false;                  # Prevent quitting Finder
        ShowPathbar = true;                    # Show path bar in Finder
        ShowStatusBar = false;                 # Hide status bar in Finder
      };

      # Control Center configuration
      controlcenter = {
        BatteryShowPercentage = true;
        Bluetooth = true;
      };
    };
  };
}
