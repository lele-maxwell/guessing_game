guess_number() {
    rand_number=$((RANDOM % $1))
    for i in {1..3};
     do  echo " guess the number"
     read guess_number
        if [ $rand_number -eq $guess_number ];
        then
         echo "CONGRATULATION YOU WON !! "
             return
         elif [ $rand_number -gt $guess_number ];
         then
                 echo " YOU MISSED YOUR NUMBER IS LESS :TRY AGAIN $guess_number "
         else
            echo "YOU MISSED.YOUR NUMBER IS BIGGER:TRY AGAIN $guess_number"         
         fi
         echo "Please try again"
     done
     echo "YOU MISSED THE NUMBER WAS $rand_number"  "
 }