#!/bin/bash
# i'm master
mac="52:54:00:12:34:5a"
vnc=":20"
kvm -enable-kvm -m 500M -hda linux.img -kernel bzImage -append "root=/dev/sda console=ttyS0" -vnc $vnc -net nic,macaddr=$mac -net socket,listen=:8010
