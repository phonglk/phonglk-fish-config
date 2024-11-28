if status --is-interactive
    # Git abbreviations
    abbr -a -g gpsuo git push --set-upstream origin
    abbr -a -g gpsuoc "git push --set-upstream origin (git branch --show-current)"
    abbr -a -g gco git checkout
    abbr -a -g gcm git commit -m "
    abbr -a -g gcam git commit -am "
end 