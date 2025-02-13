#!/bin/bash
CPU_USAGE=$(top -b -n1 | grep -i "cpu(s)" | awk '{print $2+$4}')
CPU_DIE_TEMP=$(sensors | grep "k10temp-pci-00c3" -A2 | grep -i "tctl" | awk '{print $2}' | cut -c "2-")
echo "$CPU_USAGE% | $CPU_DIE_TEMP"