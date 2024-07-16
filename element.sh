#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
if [[ -z $1 ]]; then echo "Please provide an element as an argument." exit; fi
if [[ $1 =~ ^[0-9]+$ ]]; then ELEMENT=$($PSQL "SELECT ... WHERE atomic_number = $1") else ELEMENT=$($PSQL "SELECT ... WHERE symbol = '$1' OR name = '$1'"); fi
if [[ -z $ELEMENT ]]; then echo "I could not find that element in the database." else IFS="|" read -r ... <<< "$ELEMENT"; echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL) ..."; fi
