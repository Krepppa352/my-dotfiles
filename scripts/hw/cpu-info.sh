#!/bin/bash
while true; do
echo $(top -b -n1 | grep -i "cpu(s)" | awk '{print $2+$4}')% > ~/.dotfiles/scripts/env/CPU_USAGE &
sensors | grep "k10temp-pci-00c3" -A2 | grep -i "tctl" | awk '{print $2}' | cut -c "2-" > ~/.dotfiles/scripts/env/CPU_DIE_TEMP &
sleep 1
done