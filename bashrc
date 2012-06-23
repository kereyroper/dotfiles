#alias vim="gvim || mvim || vim || vi || ed"
alias vim="gvim"
alias ftpush="git-ftp" #Esier to type and remember for pushing websites
# Get some baseball scores
alias score="lynx -nonumbers -dump http://m.mlb.com/sf/ | grep -A1 \"\(Last Game\)\|\(Next Game\)\|\(Live:\)\" | sed '/--/d'"

alias standings="lynx -nonumbers -dump http://m.mlb.com/standings/ | grep 'San Francisco' | awk '{print \"   GB:\",\$6,\$8}'"

[ -r bashrc.local ] && source bashrc.local
