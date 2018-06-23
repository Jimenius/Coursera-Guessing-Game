function main {
  num=$(ls | wc -l | egrep -o "[0-9]+")
  flag=true

  while $flag
  do
    echo "How many files are in the current directory?"
    read guess

    if [[ $guess -eq $num ]]
    then
      echo "Congratulations! Your guess is correct!"
      flag=false
    elif [[ $guess -gt $num ]]
    then
      echo "I'm sorry. Your guess is too high. Try again."
    else 
      echo "I'm sorry. Your guess is too low. Try again."
    fi

  done
}

main
