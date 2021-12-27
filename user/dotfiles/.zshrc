# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/thermal/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(git pip vi-mode extract)

export RPS1="%{$reset_color%}"
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.aliases

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

#VI
#set -o vi
eval spaceship_vi_mode_enable

#Theme
#spaceship config
SPACESHIP_EXEC_TIME_PREFIX='('
SPACESHIP_EXEC_TIME_SUFFIX=')'
SPACESHIP_EXEC_TIME_ELAPSED=0
SPACESHIP_VI_MODE_PREFIX=' '
SPACESHIP_VI_MODE_INSERT='\033[32m⫸'
SPACESHIP_VI_MODE_NORMAL='\033[32m⪢'
SPACESHIP_VI_MODE_VISUAL='\033[32m⅀'
SPACESHIP_VI_MODE_REPLACE_ONE='\033[31m⨝'
SPACESHIP_VI_MODE_PREFIX='\033[0m'

SPACESHIP_PROMPT_ORDER=(
    user 
    dir 
    host 
    git 
    package 
    node 
    docker 
    ruby 
    golang 
    php 
    rust 
    haskell 
    julia 
    aws 
    conda 
    pyenv 
    exec_time 
    line_sep 
    jobs 
    vi_mode
) 

zinit light zdharma/fast-syntax-highlighting

export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="brave"
export IMAGE="sxiv -f"
export VIDEO="mpv -f"
#export PAGER="less -SR"
export PAGER="most -s"
export MANPAGER="nvimpager"

# NNN config
BLK="12" CHR="12" DIR="1A" EXE="2D" REG="93" HARDLINK="A2" SYMLINK="87" MISSING="3F" ORPHAN="A0" FIFO="D6" SOCK="CB" OTHER="C4"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
export NNN_COLORS="#38383838;5555"

# export NNN_OPENER="nuke"
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_TRASH=0

export LC_COLLATE="C" # hidden files on top

NNN_PLUG="d:dragdrop;"
NNN_PLUG+="n:bulknew;"
NNN_PLUG+="f:fzcd;"
NNN_PLUG+="u:getplugs;"
NNN_PLUG+="e:suedit;"
NNN_PLUG+="v:rsynccp;"
NNN_PLUG+="p:preview-tui;"
#NNN_PLUG+="p:preview-tabbed;"
export NNN_PLUG

NNN_BMS="h:/home/thermal;"
NNN_BMS+="d:~/Downloads;"
NNN_BMS+="w:~/workshop;"
NNN_BMS+="g:~/.config;"
NNN_BMS+="s:/run/media/thermal/Storage;"
NNN_BMS+="a:/run/media/thermal/Storage/shows;"
NNN_BMS+="c:/run/media/thermal/Storage/codes;"
NNN_BMS+="p:/run/media/thermal/Storage/ccc;"
NNN_BMS+="m:/run/media/thermal/Storage/multimedia;"
export NNN_BMS

# n () # to cd on quit {
#     if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
#         echo "nnn is already running"
#         return
#     fi
#     export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
#     nnn "$@"
#     if [ -f "$NNN_TMPFILE" ]; then
#             . "$NNN_TMPFILE"
#             rm -f "$NNN_TMPFILE" > /dev/null
#     fi
# }

# fontpreview config
# Input prompt of fuzzy searcher
export FONTPREVIEW_SEARCH_PROMPT="> "

# Size of the font preview window
export FONTPREVIEW_SIZE=532x365

# The position where the font preview window should be displayed
export FONTPREVIEW_POSITION="+100+100"

# Font size
export FONTPREVIEW_FONT_SIZE=38

# Background color of the font preview window
export FONTPREVIEW_BG_COLOR="#000000"

# Foreground color of the font preview window
export FONTPREVIEW_FG_COLOR="#FFFFFF"

# Preview text that should be displayed in the font preview window
export FONTPREVIEW_PREVIEW_TEXT="ABCDEFGHIJKLM\nNOPQRSTUVWXYZ\nabcdefghijklm\nnopqrstuvwxyz\n1234567890\n!@$\%(){}[]"

