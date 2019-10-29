echo "How many files are in the current directory?"

correct=0
userInput=0
dlenght=0

for i in $(ls)
do
    dlenght=$((dlenght + 1))
done
echo $dlenght

while [ $correct -eq 0  ]
do
    read userInput
    if [[ $userInput -gt $dlenght ]]
    then
        echo "You are gussing too high"
    elif [[ $userInput -lt $dlenght ]]
    then
        echo "You are gussing too low"
    else
        echo "Congratulation!"
        correct=1
    fi
done

