if status --is-interactive
    # Navigation
    alias .. "cd ../"
    alias ... "cd ../../"
    alias .... "cd ../../../"
    
    # Git
    alias dotfiles '/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    alias gitwtgo 'cd (git worktree list | fzf | cut -d" " -f 1)'
    
    # System
    alias tmux "tmux -2"
    alias ssh "kitty +kitten ssh"
    alias noti_done "terminal-notifier -title \"Done\" -message \"Exit status: $status \" -sound Glass -appIcon https://uxwing.com/wp-content/themes/uxwing/download/checkmark-cross/done-icon.png"
    alias noti_error "terminal-notifier -message \"Error\" -sound Bottle"
    alias port_listening "lsof -i -P | grep LISTEN"
    
    # ls alternatives
    if type -q exa
        alias ll "exa -l -g --icons"
        alias lla "ll -a"
    else
        if type -q gls
            alias ls='gls --color=auto'
        else
            switch (uname)
                case Darwin
                    alias ls='ls -G'
                case Linux
                    alias ls='ls --color=auto'
            end
        end
        alias ll='ls -lah'
    end
end