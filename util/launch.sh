#!/bin/bash
me=$(basename $PWD)
mac="52:54:00:12:34:5$me"
vnc=":1$me"
kvm -enable-kvm -m 500M -hda linux.img -kernel bzImage -append "root=/dev/sda" -vnc $vnc -net nic,macaddr=$mac -net socket,connect=localhost:8010
