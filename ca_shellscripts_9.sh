#ca_shellscripts_9.sh

a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)

for num in "${a[@]}"
do
  if [[ " ${b[@]} " =~ " $num " ]] && [[ " ${c[@]} " =~ " $num " ]]; then
    echo $num
  fi
done