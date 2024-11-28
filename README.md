# Personal Fish Shell Configuration

A personal Fish shell configuration plugin using Fisher.

## Features

### Environment Setup
- Configures `nvim` as default editor and `most` as default pager
- Custom path additions including Homebrew, Nix profile, and user binaries
- Empty greeting configuration
- FZF default configuration with custom layout
- Tide prompt configuration (if available)
- fnm (Fast Node Manager) integration

### Secret Management
- Integrated 1Password CLI support for secret management
- Automatic secret loading from environment variables
- Secret generation utility (`_phonglk_gen_secret_config`)
- Support for various API tokens (JIRA, GitHub, OpenAI, Sourcegraph)

### Aliases & Abbreviations
- Directory navigation shortcuts (`..`, `...`, `....`)
- Git workflow abbreviations
- System utilities (tmux, SSH with kitty, notification commands)
- Enhanced `ls` commands with `exa` support when available
- Git worktree navigation

### Key Bindings
- Vim key bindings
- Custom autocomplete helpers
- Interactive FZF-powered selection menus

### Color Schemes
- OS-specific dircolors configuration
- Support for both macOS (gdircolors) and Linux environments

## Dependencies

- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder
- [tide](https://github.com/IlanCosman/tide) - Shell prompt
- [exa](https://github.com/ogham/exa) (optional) - Modern replacement for ls

### Fisher Plugins
- tsub/fzf_ghq
- patrickf1/fzf.fish
- starship/starship
- IlanCosman/tide@v6

## Installation

1. Install Fish shell
2. Install Fisher
3. Clone this repository
4. Run `fisher install .`

## License

MIT License - See LICENSE file for details.

## Author

Khoi-Phong Le