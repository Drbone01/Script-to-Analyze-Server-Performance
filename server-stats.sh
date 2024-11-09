#!/bin/bash

echo "=== Server Performance Stats ==="

# Total CPU usage
echo "CPU Usage:"
cpu_usage=$(top -bn1 | grep "Cpu(s)" | \
            sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
            awk '{print 100 - $1"%"}')
echo "Total CPU Usage: $cpu_usage"

# Total memory usage
echo "Memory Usage:"
total_mem=$(free -m | awk '/^Mem:/ {print $2}')
used_mem=$(free -m | awk '/^Mem:/ {print $3}')
free_mem=$(free -m | awk '/^Mem:/ {print $4}')
mem_usage_percent=$(awk "BEGIN {printf \"%.2f\", ($used_mem/$total_mem)*100}")
echo "Total Memory: $total_mem MB"
echo "Used Memory: $used_mem MB ($mem_usage_percent%)"
echo "Free Memory: $free_mem MB"

# Total disk usage
echo "Disk Usage:"
disk_usage=$(df -h / | awk 'NR==2 {print $5}')
disk_used=$(df -h / | awk 'NR==2 {print $3}')
disk_free=$(df -h / | awk 'NR==2 {print $4}')
echo "Total Disk Usage: $disk_usage"
echo "Disk Used: $disk_used"
echo "Disk Free: $disk_free"

# Top 5 processes by CPU usage
echo "Top 5 Processes by CPU Usage:"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -6

# Top 5 processes by memory usage
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -6

echo "=== End of Stats ==="
