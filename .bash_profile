# Add local install of qmake to path
export PATH="/Users/patwey/Qt5.5.0/5.5/clang_64/bin/:$PATH"

# Git completion
source ~/.git-completion.bash

# Prompt
Reset="\[\033[0m\]"
Red="\[\033[1;31m\]"
Green="\[\033[1;32m\]"
Blue="\[\033[1;34m\]"

gitPs1()
{
        branch="$(git symbolic-ref HEAD 2> /dev/null)";

        if [ -n "$branch" ]; then
                printf " (%s)" "${branch##refs/heads/}";
        fi
}

export PS1="$Blue\W$Reset"'$(git branch > /dev/null 2>&1; \
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
