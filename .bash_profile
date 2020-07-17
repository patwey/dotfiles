# Add local install of qmake to path
export PATH="/Users/patwey/Qt5.5.0/5.5/clang_64/bin/:$PATH"

# Set vscode as editor
export EDITOR="code -w"

# GPG
GPG_TTY=$(tty)
export GPG_TTY

# Git completion
source ~/.git-completion.bash

# Prompt
Reset="\[\033[0m\]"
Red="\[\033[0;31m\]"
Green="\[\033[0;32m\]"
Blue="\[\033[0;34m\]"

gitPs1()
{
        branch="$(git symbolic-ref HEAD 2> /dev/null)";

        if [ -n "$branch" ]; then
                printf " (%s)" "${branch##refs/heads/}";
        fi
}

export PS1="\W"'$(git branch > /dev/null 2>&1; \
if [ $? -eq 0 ]; then \
        echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
        if [ $? -eq 0 ]; then \
                echo "'$Green'"; \
        else \
                echo "'$Red'"; \
        fi)$(gitPs1 " (%s)")'$Reset'"; \
fi)'" \$ "

# Aliases
alias g="git"
alias be="bundle exec"
alias ss="cd ~/code/silver-sheet;itermocil silversheet"

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl/bin:$PATH"
