
alias cdd="cd .."
alias cddd="cd ..; cd .."
alias wcl="wc -l"
alias lesr="less -r"
alias gsr="git status | lesr"

# Constantly typing out "grep 'thing_i_want' -R ." is lame
# This lets me just type "greph 'thing_i_want'", and it will recursively search the current dir
# Naming: greph => grep [h]ere
function greph { grep "$1" -R . ; } 

alias rm='echo "This is not the command you are looking for."; false'
alias trash='trash-put'

alias xclip="xclip -selection c"
alias open="xdg-open"

alias psqlwdb="psql -U weight_user -h awspostgres-db.cuszt2zkdic6.us-west-2.rds.amazonaws.com -p 5432 -d weight_db -W"
# Running a lot of python tests, and I want to be able to see them and an kill
# them quickly and easily
alias showtests="ps aux | grep test_ | grep python"
alias killtests="ps aux | grep test_ | grep python | awk '{print \$2}' | xargs kill "

# To err is human
eval $(thefuck --alias)

export MAKEFLAGS="-j 8"

alias killnginx="sudo fuser -k 80/tcp"
