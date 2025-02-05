#!/bin/bash
while true; do
/opt/rocm/bin/rocm-smi | grep '0x73ff' | awk '{print $16}' > ~/.dotfiles/scripts/env/GPU_USAGE &
/opt/rocm/bin/rocm-smi | grep '0x73ff' | awk '{print $5}' > ~/.dotfiles/scripts/env/GPU_EDGE_TEMP &
sleep 1
done
