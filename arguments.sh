#!/bin/zsh
function File {
    # think you are inside the file
    # Change here
# Print the length of each argument
echo "Length of '$1': ${#1}"
echo "Length of '$2': ${#2}"
echo "Length of '$3': ${#3}"
    
    echo $#

}

# Do not change anything
if [ ! $# -lt 1 ]; then
    File $*
    exit 0
fi

# change here
# here you can pass the arguments
zsh arguments.sh shell is fun 




