export PATH=/Users/idiot/Library/Android/sdk:/Users/idiot/Library/Android/sdk/platform-tools:$PATH
# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/idiot/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/idiot/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/idiot/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/idiot/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/idiot/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/idiot/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/idiot/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/idiot/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#CD tricks
# enables cdpath completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

#colors -- prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

#aliases
# make your default ls command more useful
alias ls="ls -laGF"

# print the current file/folder structure
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias cda='cd ~/Code/prism-angular'
alias cdb='cd ~/Code/prism-backend'
alias cdh='cd ~/Homestead'
#list local branches
alias lb='git branch -l'
#vagrant
alias vu='cd ~/Homestead & vagrant up'
alias vs='cd ~/Homestead & vagrant status'