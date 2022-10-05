#!/bin/bash
apt autoremove -y
sh -c 'echo 1 >  /proc/sys/vm/drop_caches'
