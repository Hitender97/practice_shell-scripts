echo "Enter number between 1 to 4. Type "quit" to exit"

while [ 1 ]
do
    read mynum
    case $mynum in 
        1) echo "You typed one"
            ;;
        2) echo "you typed two"
            ;;
        3) echo "you typed three"
            ;;
        4) echo "you typed four"
            ;;
        "quit") echo "you typed quit to exit"
            break
            ;;
        *) echo "Oops its not allowed"
            ;;
    esac
done

echo "This was using case statement which is similar to switch"