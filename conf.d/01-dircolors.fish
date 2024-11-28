# Load dircolors based on OS
switch (uname)
    case Darwin
        if type -q gdircolors
            eval (gdircolors -c ~/.dircolors/dircolors.256dark)
        else
            echo "gdircolors not found"
        end
    case Linux
        eval (dircolors ~/.dircolors/nord | sed 's/=/ /; s/\'/"/g; s/;\n//g' | awk '{print "set -x " $0}' | head -n 1)
end
