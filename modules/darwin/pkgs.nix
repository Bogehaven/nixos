{ pkgs, ... }:

{
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    # Text Editors and Terminal
    neovim    # Highly extensible vim-based text editor
    kitty     # GPU-accelerated terminal emulator
    helix     # Modern terminal-based text editor

    # Programming Languages and Runtime
    python3   # Python programming language interpreter
    nodejs_22 # Node.js JavaScript runtime
    cargo     # Rust package manager and build tool

    # Language Servers and Development Tools
    nil                      # Nix language server
    lua-language-server      # Language server for Lua
    bash-language-server     # Language server for Bash
    yaml-language-server     # Language server for YAML
    typescript-language-server # Language server for TypeScript/JavaScript
    nixfmt-rfc-style        # Nix code formatter
    prettierd               # Prettier daemon for code formatting
    kdoctor                 # KDE environment doctor/diagnostics
    rbenv                   # Ruby version manager

    # CLI Utilities
    wget      # File download utility
    ripgrep   # Fast text search tool
    eza       # Modern replacement for ls
    bat       # Cat clone with syntax highlighting
    fzf       # Command-line fuzzy finder
    fd        # Simple, fast alternative to find
    tmux      # Terminal multiplexer
    lazygit   # Simple terminal UI for git

    # System and Security
    gnupg     # GNU Privacy Guard for encryption
    fastfetch # System information tool
    oh-my-posh # Prompt theme engine
  ];
}
