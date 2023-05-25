#!/bin/bash

ENGLISH_CALC() {
    sentence=$1
    IFS=' ' read -r operand1 operator operand2 <<< "$sentence"
    
    result=0
    
    # Effectuer l'opération arithmétique en fonction de l'opérateur
    case $operator in
        plus)
            result=$((operand1 + operand2))
            ;;
        minus)
            result=$((operand1 - operand2))
            ;;
        times)
            result=$((operand1 * operand2))
            ;;
        *)
            echo "Opérateur non pris en charge : $operator"
            return 1
    esac
    
    # Afficher le résultat du calcul
    echo "$operand1 $operator $operand2 = $result"
}
# Exemples d'utilisation
ENGLISH_CALC '3 plus 5'
ENGLISH_CALC '5 minus 1'
ENGLISH_CALC '4 times 6'