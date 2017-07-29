
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
    perl
    virtualenv
    nvm
    aws
    go
    elixir
    git
    hg
    cmd_exec_time
)

# for lm
export LC_ALL=en_US.UTF-8

# undo annoying alias in common-aliases
alias rm='rm -f'
alias cp='cp -f'
alias mv='mv -f'
