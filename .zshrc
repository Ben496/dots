autoload -U colors && colors
# Prompt
export PS1="%{$fg_bold[red]%}%25<...<%~%<< > %{$reset_color%}"

# Aliases
alias ls="ls --color=auto"
alias subl="/opt/sublime_text/sublime_text"
alias pwdwinetricks="WINEPREFIX=`pwd` winetricks"
alias pymanage="python manage.py"

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
