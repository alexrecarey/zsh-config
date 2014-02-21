# Following line breaks scp !
#echo "sourcing $ZDOTDIR/.zshenv"

typeset -U path
path=(~/bin $path)

# Ensure XDG_CONFIG_HOME is set
[[ -n "$XDG_CONFIG_HOME" ]] || export XDG_CONFIG_HOME=$HOME/.config

# Use XDG config dir for vim
export VIMDOTDIR="$XDG_CONFIG_HOME/vim"
export VIMINIT='let $VIMRC="$VIMDOTDIR/vimrc" | source $VIMRC'
export VIMPAGER_RC="$VIMDOTDIR/vimpagerrc"
export VIMPERATOR_RUNTIME="$XDG_CONFIG_HOME/vimperator"
export VIMPERATOR_INIT=":source $VIMPERATOR_RUNTIME/vimperatorrc"

# Common apps
export BROWSER=firefox
export EDITOR=vim
export VISUAL=$EDITOR
export FILER=spacefm
export PAGER=vimpager
export MANPAGER=$PAGER

# De la couleur pour grep
export GREP_OPTIONS='--color=auto'

# Fix Steam's close button (close -> minimize to tray)
export STEAM_FRAME_FORCE_CLOSE=1

# Fix "QGtkStyle was unable to detect the current GTK+ theme"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Use secondary camera for artoolkit
export ARTOOLKIT_CONFIG="v4l2src device=/dev/video1 use-fixed-fps=false ! ffmpegcolorspace ! capsfilter caps=video/x-raw-rgb,bpp=24 ! identity name=artoolkit ! fakesink"

# [[ $FBTERM -eq 1 ]] && export TERM=fbterm
# [[ $TERM -eq "fbterm" ]] && fbterm&

# Chrome options
# export CHROMIUM_USER_FLAGS="--password-store=gnome"

# Default permissions
# umask 022

# Proxy HTTP / FTP w/o password
#export http_proxy="http://proxy.exemple.org:8080"
#export ftp_proxy="ftp://proxy.exemple.org:8080"

# Proxy HTTP / FTP with password
#export http_proxy="http://login:password@proxy.exemple.org:8080"
#export ftp_proxy="ftp://login:password@proxy.exemple.org:8080"

# Skip proxy for specific hosts
#export no_proxy="exemple.org"

