#!/bin/bash

old_name=fix_canaries
new_name=debug_consecutive_pins
for i in `ls ${old_name}*`; do
	name=${i%%\.*};
	suff=${i##*\.};
	nname=`echo $name | sed -e "s/${old_name}\(.*$\)/${new_name}\1/"`
	mv $name"."$suff $nname"."$suff
done
