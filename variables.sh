# !/bin/zsh
# le but de cet exercice est de cree une chaine un entier et une variable complexe.

BIRTHDATE="Jan 1, 2000"
Presents=10
BIRTHDAY=$(date -j -f "%b %d, %Y" "$BIRTHDATE" "+%A")

echo "BIRTHDATE: $BIRTHDATE"
echo "Presents: $Presents"
echo "BIRTHDAY: $BIRTHDAY"

if [ "$BIRTHDATE" == "Jan 1, 2000" ]; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi

if [ $Presents -eq 10 ]; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi

if [ "$BIRTHDAY" == "Saturday" ]; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi

