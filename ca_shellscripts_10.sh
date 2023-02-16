#ca_shellscripts_10.sh


function ENGLISH_CALC() {
    case $2 in
        "plus")
            result=$(($1 + $3))
            operator="+"
            ;;
        "minus")
            result=$(($1 - $3))
            operator="-"
            ;;
        "times")
            result=$(($1 * $3))
            operator="*"
            ;;
        *)
    esac

    echo "$1 $operator $3 = $result"
}

ENGLISH_CALC 3 plus 5
ENGLISH_CALC 5 minus 1
ENGLISH_CALC 4 times 6