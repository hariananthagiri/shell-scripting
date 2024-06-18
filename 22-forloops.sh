
for i in {1..5} # forloop with ranges
do
    echo "$i"
done

for i in 1 2 3 4 5 # forloop with values
do
    echo "$i"
done

for (( i=1; i<=5; i++ )) # forloop with no variable inc cond decrement
do
    echo "$i"
done

