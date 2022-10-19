# To enable these configurations, include the following line in your ~/.bashrc
# source ~/.my.bashrc

# interactive options

if [[ $(uname) == "Linux" ]]; then
	alias ls='ls --color=auto -F'
fi

if [[ -n $PS1 ]]; then
	txtpln='\[\e[0m\]'    # Colour off
	txtred='\[\e[0;31m\]' # Red
	txtgrn='\[\e[0;32m\]' # Green
	txtylw='\[\e[0;33m\]' # Yellow
	txtblu='\[\e[0;34m\]' # Blue
	txtpur='\[\e[0;35m\]' # Purple
	txtcyn='\[\e[0;36m\]' # Cyan
	txtwht='\[\e[0;37m\]' # White

	PS1="\n${txtcyn}\u ${txtwht}@ ${txtgrn}\h ${txtylw}\w ${txtwht}[\T] \n${txtred}\$ ${txtpln}"
fi

# move files to trash 
trash() {
  trashd=/tmp/$USER
  if [[ ! -d $trashd ]]; then mkdir $trashd; fi
  mv $* $trashd
}

alias rm='rm -i'
alias sd="cd \$(find * -type d | fzf)"

alias use-local='PATH=$HOME/local/bin:${PATH}'

export EDITOR=vim
export PAGER=less

# set language encoding
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# set default file permissions
umask 027
