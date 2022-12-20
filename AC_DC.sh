priklad=$(zenity --forms --title="Solve capacity" \
--text="Enter V and A of Accum" --separator="," \
--add-entry="Voltage: " \
--add-entry="Amper: " \
--add-entry="quantity: " \
--add-list="Path of Electical chain" \
--list-values="Paralel|Posled")

V=$(echo $priklad | awk 'BEGIN {FS=","}{print $1}')
A=$(echo $priklad | awk 'BEGIN {FS=","}{print $2}')
Q=$(echo $priklad | awk 'BEGIN {FS=","}{print $3}')
P=$(echo $priklad | awk 'BEGIN {FS=","}{print $4}')

echo $P, $V, $A, $Q

Usl1="Posled"
Usl2="Paralel"

if [[ $P == $Usl1 ]]; then
	echo ${Usl1}
	inf=$(echo $V*$Q | bc)
	result=$(zenity --info --title="Information about accum" --text="Volt = $inf, Amper = $A, Quant = $Q, Path = $P")
fi

if [[ $P == $Usl2 ]]; then
	echo ${Usl2}
	inf=$(echo $A*$Q | bc)
	result=$(zenity --info --title="Information about accum" --text="Volt = $V, Amper = $inf, Quant = $Q, Path = $P")
fi
