
for (( A=0; A < 10; A++ ))
do
    for (( B=0; B<=$A; B++ ))
    do 
        rav=$(echo $B | rev)
        echo -n $rav | 
        sleep 1
    done
    echo
done