# Set environment variables
if type -q nvim
    set -gx EDITOR nvim
end

if type -q most
    set -gx PAGER most
end

# Add custom paths
fish_add_path /opt/homebrew/bin
fish_add_path ~/.nix-profile/bin
fish_add_path $HOME/bin

# Empty greeting
set fish_greeting ""

# FZF defaultconfiguration
set -gx FZF_DEFAULT_OPTS '--height 40% --layout=reverse --border'

if status --is-interactive
    if type -q tide
        tide configure --auto --style=Lean --prompt_colors='True color' --show_time='24-hour format' --lean_prompt_height='Two lines' --prompt_connection=Dotted --prompt_connection_andor_frame_color=Light --prompt_spacing=Sparse --icons='Many icons' --transient=Yes
    else
        echo "Tide not found"
    end

    # Load fnm if available
    if type -q fnm
        fnm env | source
    else
        echo "Fnm not found"
    end
end


# Load secrets if file exists
if test -f ~/.config/fish/_secrets.fish
    source ~/.config/fish/_secrets.fish
else
    set -gx JIRA_API_KEY "op://Private/JIRA Token/credential"
    set -gx JIRA_USER "op://Private/JIRA Token/username"
    set -gx JIRA_HOST "op://Private/JIRA Token/host"
    set -gx HOMEBREW_GITHUB_API_TOKEN "op://Private/Github API Token/credential"
    set -gx OPENAI_API_KEY "op://Private/Open API Key/credential"
    set -gx SRC_ACCESS_TOKEN "op://Employee/Sourcegraph/API Token"

    echo "run _phonglk_gen_secret_config to generate secrets file"
end 
set -gx SRC_ENDPOINT "https://canva.sourcegraphcloud.com"