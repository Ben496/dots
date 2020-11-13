# Set editor
export EDITOR=nvim

export ZSH=$HOME/.ohmyzsh
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Prompt
#autoload -U colors && colors
#export PS1="%{$fg_bold[red]%}%25<...<%~%<< > %{$reset_color%}"

# Terminal Title (xterm title)
autoload -Uz add-zsh-hook
function xterm_title_precmd () {
	print -Pn -- '\e]2;%n@%m %~\a'
	[[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}
function xterm_title_preexec () {
	print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
	[[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}
if [[ "$TERM" == (alacritty*|gnome*|konsole*|putty*|rxvt*|screen*|tmux*|xterm*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi

# don't share history with other instances
setopt nosharehistory


# Aliases
alias ls="ls --color=auto"
alias subl="/opt/sublime_text/sublime_text"
alias pwdwinetricks="WINEPREFIX=`pwd` winetricks"
alias e="exa"

# Custom gcc
export PATH=/usr/local/gcc-8/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/gcc-8/lib64:$LD_LIBRARY_PATH

# Custom gdb
export PATH=/usr/local/gdb-8/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/gdb-8/lib:$LD_LIBRARY_PATH

# android-tools
export PATH=~/Android/Sdk/platform-tools:$PATH

# Cargo bin
export PATH=~/.cargo/bin:$PATH

# Nix
if [ -e /home/ben/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ben/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# Nix home-manager
#export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
