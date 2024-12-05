{ ... }:

{
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "uninstall";
    };

    brews = [
      "lua"
      "ripgrep"
      "sketchybar"
      "borders"
      "libpcap"
      "hcxtools"
      "xz"
      "ykman"
      "tree"
      "trash-cli"
      "starship"
    ];

    taps = [
      "nikitabobko/tap"
      "felixkratz/formulae"
    ];

    casks = [
      # Development Tools
      { name = "android-studio"; greedy = true; } # IDE for Android development
      { name = "android-platform-tools"; greedy = true; } # Android SDK platform tools
      { name = "cursor"; greedy = true; } # AI-first code editor
      { name = "docker"; greedy = true; } # Container platform
      { name = "dotnet-sdk"; greedy = true; } # .NET development SDK
      { name = "flutter"; greedy = true; } # Google's UI toolkit
      { name = "gcc-arm-embedded"; greedy = true; } # ARM GCC toolchain
      { name = "ghidra"; greedy = true; } # Software reverse engineering tool
      { name = "hopper-disassembler"; greedy = true; } # Reverse engineering tool
      { name = "jetbrains-toolbox"; greedy = true; } # JetBrains IDE manager
      { name = "kicad"; greedy = true; } # Electronics design automation suite
      { name = "machoview"; greedy = true; } # Mach-O file viewer
      { name = "postman"; greedy = true; } # API development platform
      { name = "visual-studio-code"; greedy = true; } # Code editor
      { name = "xcodes"; greedy = true; } # Xcode versions manager
      { name = "zed"; greedy = true; } # High-performance code editor

      # Terminal Emulators
      { name = "alacritty"; greedy = true; } # GPU-accelerated terminal
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
      { name = "alfred"; greedy = true; } # Productivity app launcher
      { name = "hiddenbar"; greedy = true; } # Menu bar icon manager
      { name = "linear-linear"; greedy = true; } # Project management tool
      { name = "meetingbar"; greedy = true; } # Calendar meetings in menu bar
      { name = "notion"; greedy = true; } # All-in-one workspace
      { name = "obsidian"; greedy = true; } # Knowledge base markdown editor
      { name = "raycast"; greedy = true; } # Productivity launcher
      { name = "time-out"; greedy = true; } # Break reminder tool

      # Communication & Collaboration
      { name = "discord"; greedy = true; } # Chat and community platform
      { name = "microsoft-teams"; greedy = true; } # Business communication
      { name = "protonmail-bridge"; greedy = true; } # ProtonMail integration
      { name = "slack"; greedy = true; } # Team communication
      { name = "whatsapp"; greedy = true; } # Messaging app
      { name = "zoom"; greedy = true; } # Video conferencing

      # Security & Privacy
      { name = "bitwarden"; greedy = true; } # Password manager
      { name = "lulu"; greedy = true; } # Network firewall
      { name = "protonvpn"; greedy = true; } # Secure VPN service
      { name = "tunnelblick"; greedy = true; } # OpenVPN client
      { name = "wireshark"; greedy = true; } # Network protocol analyzer

      # System Utilities
      { name = "aerospace"; greedy = true; } # Window manager
      { name = "aldente"; greedy = true; } # Battery charge limiter
      { name = "anydesk"; greedy = true; } # Remote desktop
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
      { name = "brave-browser"; greedy = true; } # Privacy-focused browser
      { name = "zen-browser"; greedy = true; } # Minimal browser

      # Media & Entertainment
      { name = "calibre"; greedy = true; } # E-book manager
      { name = "obs"; greedy = true; } # Streaming/recording software
      { name = "pika"; greedy = true; } # Color picker tool
      { name = "rekordbox"; greedy = true; } # DJ software
      { name = "spotify"; greedy = true; } # Music streaming
      { name = "vlc"; greedy = true; } # Media player

      # 3D Printing & Making
      { name = "bambu-studio"; greedy = true; } # 3D printer slicer
      { name = "prusaslicer"; greedy = true; } # 3D printer slicer
      { name = "raspberry-pi-imager"; greedy = true; } # RPi OS installer

      # Development Environments
      { name = "miniconda"; greedy = true; } # Python distribution
      { name = "r"; greedy = true; } # Statistical computing
      { name = "rstudio"; greedy = true; } # R IDE
      { name = "temurin"; greedy = true; } # OpenJDK distribution

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

      # Input Methods
      { name = "eurkey"; greedy = true; } # European keyboard layout

      # Other
      { name = "legcord"; greedy = true; } # Discord rich presence
      { name = "psst"; greedy = true; } # Spotify client
      { name = "thunderbird@beta"; greedy = true; } # Email client
      { name = "vial"; greedy = true; } # Keyboard configurator
    ];
  };
}