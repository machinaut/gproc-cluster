#!/bin/bash
# make the slaves 0 through 7
for i in {0..7} ; do
	echo "makeing clone $i"
	mkdir -p $i
	ln -s ../util/launch.sh $i
	cp util/linux.img $i
	ln -s ../util/bzImage $i
done	
# do it again for the master
i="master"
	echo "makeing clone $i"
	mkdir -p $i
	ln -s ../util/launch-master.sh $i
	cp util/linux.img $i
	ln -s ../util/bzImage $i
echo "done"
