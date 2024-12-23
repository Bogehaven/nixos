{ ... }:

{
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    brews = [
      "lua"      # Programming language designed for embedded use
      "ripgrep"  # Fast line-oriented search tool (alternative to grep)
      "sketchybar" # Highly customizable macOS status bar replacement
      "borders"  # Window border highlighter for macOS
      "libpcap"  # Portable C/C++ library for network traffic capture
      "hcxtools" # Utils for capturing wlan traffic and conversion
      "xz"       # Data compression utilities
      "ykman"    # YubiKey Manager CLI tool
      "tree"     # Directory listing tool showing tree structure
      "trash-cli" # CLI interface to macOS trash
      "starship" # Cross-shell customizable prompt
      "awscli"   # Official Amazon AWS command-line interface
      "gh"       # GitHub CLI tool
    ];

    taps = [
      "nikitabobko/tap"
      "felixkratz/formulae"
      "dimentium/autoraise"
    ];

    casks = [
      # Development Tools
      { name = "cursor"; greedy = true; } # AI-first code editor
      { name = "docker"; greedy = true; } # Container platform
      { name = "jetbrains-toolbox"; greedy = true; } # JetBrains IDE manager
      { name = "kicad"; greedy = true; } # Electronics design automation suite
      { name = "postman"; greedy = true; } # API development platform
      { name = "visual-studio-code"; greedy = true; } # Code editor
      { name = "datagrip"; greedy = true; } # Jetbrains DataGrip
      { name = "pycharm"; greedy = true; } # Jetbrains PyCharm
      { name = "windsurf"; greedy = true; } # Agentic IDE powered by AI Flow paradigm


      # Terminal Emulators
      { name = "kitty"; greedy = true; } # Fast terminal emulator
      { name = "warp"; greedy = true; } # Rust-based terminal

      # Creative & Design
      { name = "affinity-designer"; greedy = true; } # Vector graphics editor
      { name = "affinity-photo"; greedy = true; } # Photo editing software
      { name = "affinity-publisher"; greedy = true; } # Desktop publishing app
      { name = "autodesk-fusion"; greedy = true; } # 3D CAD/CAM tool
      { name = "blender"; greedy = true; } # 3D creation suite
      { name = "figma"; greedy = true; } # Collaborative design tool
      { name = "sf-symbols"; greedy = true; } # Apple system symbols

      # Productivity & Organization
      { name = "hiddenbar"; greedy = true; } # Menu bar icon manager
      { name = "meetingbar"; greedy = true; } # Calendar meetings in menu bar
      { name = "notion"; greedy = true; } # All-in-one workspace
      { name = "obsidian"; greedy = true; } # Knowledge base markdown editor

      # Communication & Collaboration
      { name = "discord"; greedy = true; } # Chat and community platform
      { name = "microsoft-teams"; greedy = true; } # Business communication
      { name = "slack"; greedy = true; } # Team communication
      { name = "whatsapp"; greedy = true; } # Messaging app
      { name = "zoom"; greedy = true; } # Video conferencing

      # Security & Privacy
      { name = "bitwarden"; greedy = true; } # Password manager
      { name = "protonvpn"; greedy = true; } # Secure VPN service
      { name = "tunnelblick"; greedy = true; } # OpenVPN client
      { name = "wireshark"; greedy = true; } # Network protocol analyzer

      # System Utilities
      { name = "aerospace"; greedy = true; } # Window manager
      { name = "aldente"; greedy = true; } # Battery charge limiter
      { name = "disk-inventory-x"; greedy = true; } # Disk space analyzer
      { name = "displaylink"; greedy = true; } # Display connectivity
      { name = "eul"; greedy = true; } # System monitor
      { name = "karabiner-elements"; greedy = true; } # Keyboard customizer
      { name = "keycastr"; greedy = true; } # Keystroke visualizer
      { name = "linearmouse"; greedy = true; } # Mouse/trackpad customizer
      { name = "macfuse"; greedy = true; } # Filesystem in userspace
      { name = "microsoft-auto-update"; greedy = true; } # Microsoft apps updater
      { name = "notchnook"; greedy = true; } # Notch utility
      { name = "pearcleaner"; greedy = true; } # App uninstaller
      { name = "shottr"; greedy = true; } # Screenshot tool
      { name = "the-unarchiver"; greedy = true; } # Archive extraction tool

      # Web Browsers
      { name = "arc"; greedy = true; } # Chromium-based browser

      # Media & Entertainment
      { name = "calibre"; greedy = true; } # E-book manager
      { name = "pika"; greedy = true; } # Color picker tool
      { name = "spotify"; greedy = true; } # Music streaming
      { name = "vlc"; greedy = true; } # Media player

      # 3D Printing & Making
      { name = "bambu-studio"; greedy = true; } # 3D printer slicer
      { name = "raspberry-pi-imager"; greedy = true; } # RPi OS installer

      # Development Environments
      { name = "miniconda"; greedy = true; } # Python distribution
      { name = "r"; greedy = true; } # Statistical computing
      { name = "rstudio"; greedy = true; } # R IDE

      # Documentation & Learning
      { name = "font-sf-mono"; greedy = true; } # Apple's monospace font
      { name = "font-sf-pro"; greedy = true; } # Apple's system font
      { name = "font-space-mono-nerd-font"; greedy = true; } # Patched monospace font
      { name = "mactex"; greedy = true; } # TeX/LaTeX distribution
      { name = "skim"; greedy = true; } # PDF reader

      # Database Tools
      { name = "mongodb-compass"; greedy = true; } # MongoDB GUI

      # File Management & Sharing
      { name = "balenaetcher"; greedy = true; } # USB writer
      { name = "spacedrive"; greedy = true; } # File management system
      { name = "transmission"; greedy = true; } # Torrent client
      { name = "utm"; greedy = true; } # Virtual machine host

      # AI & Chat
      { name = "chatgpt"; greedy = true; } # OpenAI ChatGPT client

      # Gaming & Game Development
      { name = "godot"; greedy = true; } # Game engine

      # Other
      { name = "vial"; greedy = true; } # Keyboard configurator
      { name = "spotify"; greedy = true; } # Spotify
      { name = "microsoft-excel"; greedy = true; } # Excel
      { name = "swiftbar"; greedy = true; } # AI-first code editor
      { name = "autoraiseapp"; greedy = true; } # Auto Raise
    ];
    masApps = {
      amphetamine = 937984704;
      kindle = 302584613;
      tailscale = 1475387142;

      # useful for debugging macos key codes
      #key-codes = 414568915;
    };
  };
}
