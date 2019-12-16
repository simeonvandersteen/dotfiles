
ZSH_THEME="bullet-train"

BULLETTRAIN_DIR_EXTENDED=2

BULLETTRAIN_CONTEXT_DEFAULT_USER=simeon
BULLETTRAIN_CONTEXT_BG=blue
BULLETTRAIN_CONTEXT_FG=white

#BULLETTRAIN_IS_SSH_CLIENT=true

BULLETTRAIN_PROMPT_ORDER=(
    status
    custom
    context
    dir
    virtualenv
    cmd_exec_time
)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# undo annoying alias in common-aliases
unalias rm
unalias cp
unalias mv

export JAVA_HOME=/Users/simeon/.sdkman/candidates/java/current

alias diff='diff -W $(tput cols)'

gcopr() {
	gco develop && gf && gco $(git branch -a | grep "remotes/.*$1" | sed 's|.*remotes/origin/\(.*\)|\1|' | tail -n 1) && gl
}

gjmessage() {
	echo "$(git branch | grep \* | sed -e 's|.*/\([A-Z]*-[0-9]*\)[^0-9]*.*|\1|') $1"
}
gcj() {
	gc -m "$(gjmessage $1)"
}
gcaj() {
	gca -m "$(gjmessage $1)"
}

# Find alias
fa() {
	alias | grep "$1"
}

# Reload zsh profile
alias rz='source ~/.zshrc'
