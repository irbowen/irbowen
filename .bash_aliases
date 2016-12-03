

alias cdd="cd .."
alias cddd="cd ..; cd .."
alias wcl="wc -l"

# Constantly typing out "grep 'thing_i_want' -R ." is lame
# This lets me just type "grep 'thing_i_want'", and it will recursively search the current dir
function greph { grep "$1" -R .; }

alias rm='echo "This is not the command you are looking for."; false'
alias trash='trash-put'

alias xclip="xclip -selection c"

# Running a lot of python tests, and I want to be able to see them and an kill
# them quickly and easily
alias showtests="ps aux | grep test_ | grep python"
alias killtests="ps aux | grep test_ | grep python | awk '{print \$2}' | xargs kill "

# To err is human
eval $(thefuck --alias)
