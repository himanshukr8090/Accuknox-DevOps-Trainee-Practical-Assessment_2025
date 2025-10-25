#!/bin/bash

CPU_LIMIT=80
MEM_LIMIT=80
DISK_LIMIT=80

echo "=== System Health Check ==="

# CPU
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1)
if [ $CPU -gt $CPU_LIMIT ]; then
  echo "CPU usage high: $CPU%"
else
  echo "CPU usage is OK: $CPU%"
fi

# Memory
MEM=$(free | grep Mem | awk '{printf "%.0f", $3/$2*100}')
if [ $MEM -gt $MEM_LIMIT ]; then
  echo "Memory usage high: $MEM%"
else
  echo "Memory usage is OK: $MEM%"
fi

# Disk
DISK=$(df / | grep / | awk '{print $5}' | sed 's/%//')
if [ $DISK -gt $DISK_LIMIT ]; then
  echo "Disk usage high: $DISK%"
else
  echo "Disk usage is OK: $DISK%"
fi

# Top 5 processes by CPU
echo "Top 5 CPU-consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
