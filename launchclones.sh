#!/bin/bash
for i in {0..7} ; do
	cd $i
	./launch.sh &
	disown
	cd ..
done
i="master"
	cd $i
	./launch-master.sh &
	disown
	cd ..
echo "done"
