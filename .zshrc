# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="fino"
ZSH_THEME="cypher"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Banner Header
# cat ~/banner.txt
cowsay "Hello Hacky"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	zsh-syntax-highlighting
	zsh-autosuggestions
	colored-man-pages
	colorize
	grc
	tmux)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

## General Aliases
alias ei="exit"
alias tt="tmux"
alias rtv="rtv --enable-media"
alias bb="cd -"
alias rfo="rm -rf"
alias vrc="vi ~/.config/nvim/init.vim"
alias p2up='pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U'
alias p3up='python3 -m pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 python3.9 -m pip install -U'
alias python='python3'
alias vi="nvim"

# GIT
alias gs="git status"
alias gd="nvim -d"
alias gc="git commit -m"
alias glo="git pull origin master"
alias guo="git push origin master"
alias glg="git pull github"
alias gug="git push github"

# Youtube-DL
alias yty="yt-dlp -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'" 
alias ytu="yt-dlp -o '~/MyVideos/%(playlist)s/%(chapter_number)s - %(chapter)s/%(title)s.%(ext)s'"
alias ydl="yt-dlp --prefer-ffmpeg --merge-output-format mkv "
alias ymp4="yt-dlp --prefer-ffmpeg --merge-output-format mp4 "
alias ymp3="yt-dlp --extract-audio --audio-format mp3 "
alias wgetMKV='wget -A "*.mp3" -r'
alias neofetch="neofetch --backend kitty --source ~/Pictures/Memes/Our\ Lady\ of\ Sorrows.jpg --size 400px"

# 😹 Cat
alias cat="ccat"
alias la='exa -a --color=always --group-directories-first --icons'

# Remarkable
alias rmark="ssh root@10.11.99.1"

# Lazy
alias code="cd ~/ExtraDrive/Coding"

# Twitch
alias gotti="mpv https://www.twitch.tv/tugotti78"
alias mami="mpv https://www.twitch.tv/donscaremami"

# Colorize
ZSH_COLORIZE_STYLE="colorful"
ZSH_TMUX_AUTOSTART=true

# Updates
alias up="sudo apt upgrade && sudo apt update"

# Shortcuts
alias screens="rm -f Pictures/Screenshots/*"

source /home/hacky/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/hacky/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

