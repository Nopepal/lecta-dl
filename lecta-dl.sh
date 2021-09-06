#!/bin/sh

[ $# -ne 3 ] && exit 1;

URL="$1"
TOKEN=$(printf "%s" "$URL" | sed -e "s/.*\?token\=//")
BOOKURL=$(printf "%s" "$URL" | sed -e "s/\?token\=.*//")

for i in $(seq $2 $3)
do
	INDEX=$(printf "%06d" "$i")
	HEXNUM=$(printf "%x" "$i")
	wget -O "bg${INDEX}.png" "${BOOKURL}/data/bg${HEXNUM}.png?token=${TOKEN}"
done
