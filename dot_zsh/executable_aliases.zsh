alias please='python manage.py'
alias pi="pip install"
alias pc="pip-compile"
alias pcu="pip-compile --upgrade"
alias pcup="pip-compile --upgrade-package"
alias won="workon"
alias ghpr="gh pr"
alias ghprc="ghpr create"
alias ghmru="ghpr update"
alias ghrv="gh repo view"
alias ghrvw="gh repo view --web"


function tfmoe {
  echo -e "\nOutputs:"
  grep -r "output \".*\"" $1 |awk '{print "\t",$2}' |tr -d '"'
  echo -e "\nVariables:"
  grep -r "variable \".*\"" $1 |awk '{print "\t",$2}' |tr -d '"'
}

function tfmoi {
  touch $1/variables.tf
  touch $1/outputs.tf
  touch $1/versions.tf
  touch $1/main.tf
}

