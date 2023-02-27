. ~/.config/fish/aliases.fish
set -U fish_greeting ""

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Get today's date
set today "$(date +%m-%d)"

# Pull the saint from the file
grep $today saint_of_the_day.md | sed -e 's/\b[0-9]\{2\}-[0-9]\{2\}//g' | cowsay
echo " "

starship init fish | source