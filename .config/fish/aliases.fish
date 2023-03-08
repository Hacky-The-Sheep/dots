# General
alias vi "nvim"
alias ei "exit"
alias tt "tmux new"
alias rtv "rtv --enable-media"
alias bb "cd -"
alias rfo "rm -rf"
alias vrc "vi ~/.config/nvim/init.vim"
alias python "python3"
alias nb "newsboat"
alias cat "bat"
alias ls "nu -c ls"

# Git
alias ga "git add"
alias gs "git status"
alias gc "git commit -m"

# YTDL
alias yty "yt-dlp -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' "
alias ytu "yt-dlp -o '~/MyVideos/%(playlist)s/%(chapter_number)s - %(chapter)s/%(title)s.%(ext)s'"
alias ydl "yt-dlp --prefer-ffmpeg --merge-output-format mkv "
alias ymp4 "yt-dlp --prefer-ffmpeg --merge-output-format mp4 "
alias ymp3 "yt-dlp --extract-audio --audio-format mp3 "

alias la "exa -a --color =always --group-directories-first --icons,"
alias rmark "ssh root@10.11.99.1"

# Twitch
alias gotti "mpv https://www.twitch.tv/tugotti78"
alias mami "mpv https://www.twitch.tv/donscaremami"

alias up "sudo apt update && sudo apt upgrade"
alias screens "rm -f Pictures/Screenshots/*"
alias code "cd ~/ExtraDrive/Coding"
alias cpy "cd ~/ExtraDrive/Coding/Python/"
alias crst "cd ~/ExtraDrive/Coding/rust/"
alias cpr "cd ~/ExtraDrive/Projects/"
alias kb "cd ~/Documents/PKM/"