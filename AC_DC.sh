#/bin/bash

# Series or Parallel
# последовательно или параллельно
Condition1="Series" # последовательно
Condition2="Parallel" # параллельно

form=$(zenity --forms --title="Solve capacity" \
	--text="Enter V and A of Accum" --separator="," \
	--add-entry="Voltage: " \
	--add-entry="Amper: " \
	--add-entry="quantity: " \
	--add-list="Path of Electical chain" \
	--list-values="${Condition1}|${Condition2}")

V=$(echo $form | awk 'BEGIN {FS=","}{print $1}')
A=$(echo $form | awk 'BEGIN {FS=","}{print $2}')
Q=$(echo $form | awk 'BEGIN {FS=","}{print $3}')
P=$(echo $form | awk 'BEGIN {FS=","}{print $4}')

echo $P, $V, $A, $Q



if [[ $P == $Condition1 ]]; then
	echo ${Condition1}
	inf=$(echo $V*$Q | bc)
	result=$(zenity --info --title="Information about accum" --text="Volt = $inf, Amper = $A, Quant = $Q, Path = $P")
fi

if [[ $P == $Condition2 ]]; then
	echo ${Condition2}
	inf=$(echo $A*$Q | bc)
	result=$(zenity --info --title="Information about accum" --text="Volt = $V, Amper = $inf, Quant = $Q, Path = $P")
fi
