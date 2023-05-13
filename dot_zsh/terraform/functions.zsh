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

