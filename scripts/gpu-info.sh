#!/bin/bash
GPU_USAGE=$(/opt/rocm/bin/rocm-smi | grep '0x73ff' | awk '{print $16}')
GPU_EDGE_TEMP=$(/opt/rocm/bin/rocm-smi | grep '0x73ff' | awk '{print $5}')
echo "$GPU_USAGE | $GPU_EDGE_TEMP"