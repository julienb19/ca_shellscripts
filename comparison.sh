# !/bin/zsh
a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)

for element in "${a[@]}"; do
    # Vérifier si l'élément existe à la fois dans le deuxième (b) et le troisième tableau (c)
    if [[ " ${b[*]} " == *" $element "* ]] && [[ " ${c[*]} " == *" $element "* ]]; then
        common_elements+=("$element")
    fi
done
echo "Éléments communs : ${common_elements[@]}"