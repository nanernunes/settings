alias ls='ls -G'
alias ll='ls -l'

source /usr/local/etc/bash_completion

R='\[\033[0m\]'
LGREEN='\[\033[01;32m\]'
LBLUE='\[\033[01;34m\]'
DGRAY='\[\033[01;30m\]'
LGRAY='\[\033[00;37m\]'
RED='\[\033[01;31m\]'

PS1="$ ${DGRAY}\h::${R}${LGRAY}\u${R} -> ${LBLUE}\W${R}\$(__git_ps1 \"${RED} (%s)${R}\"): "

function fuse() {
  local SERVER="server"                  # Server, with FQDN if possible
  local USER="user"                      # Remote username to mount
  local VOLUME="/Volumes/${SERVER}"      # Local mount point on OSX
  diskutil unmount force $VOLUME         # Force a unmount on Volume
  mkdir -p $VOLUME                       # Ensures that the directory exists
  sshfs -o auto_cache,reconnect,workaround=all ${USER}@${SERVER}:/home/${USER}/ $VOLUME
}
