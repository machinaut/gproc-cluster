#!/bin/bash
#connect to all of the clones in one VNC window
for i in {0..7} ; do
	vinagre ::591$i &
	disown
done
i="master"
	vinagre ::5920 &
	disown
echo "done"
