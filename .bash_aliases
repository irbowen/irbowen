

alias cdd="cd .."
alias wcl="wc -l"


alias rm='echo "This is not the command you are looking for."; false'
alias trash='trash-put'

alias xclip="xclip -selection c"

# Running a lot of python tests, and I want to be able to see them and an kill
# them quickly and easily
alias showtests="ps aux | grep test_ | grep python"
alias killtests="ps aux | grep test_ | grep python | awk '{print \$2}' | xargs kill "

# To err is human
eval $(thefuck --alias)
