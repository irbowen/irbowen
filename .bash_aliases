
alias rm='echo "This is not the command you are looking for."; false'
alias trash='trash-put'

# Running a lot of python tests, and I want to be able to see them and an kill
# them quickly and easily
alias showtests="ps aux | grep test_"
alias killtests="ps aux | grep test_ | awk '{print \$2}' | xargs kill "
