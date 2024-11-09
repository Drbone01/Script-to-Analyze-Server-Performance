# Server Performance Analysis

This project includes two scripts for monitoring basic server performance stats on a Linux server:

1. **Python Script** (`server_performance.py`): Provides server stats using Python's `psutil` library.
2. **Bash Script** (`server-stats.sh`): A lightweight shell script for quick server performance analysis using standard Linux commands.

## Project Page

You can view the project repository on GitHub: [Script to Analyze Server Performance](https://github.com/Drbone01/Script-to-Analyze-Server-Performance.git)

## Scripts Overview

### Python Script (`server_performance.py`)

The Python script analyzes:
- CPU usage
- Memory usage
- Disk usage
- Network stats (bytes sent and received)

### Bash Script (`server-stats.sh`)

The Bash script provides:
- Total CPU usage
- Total memory usage (Free vs Used, including percentage)
- Total disk usage (Free vs Used, including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

## Requirements

- **Python Script**: Requires Python 3.x and the `psutil` library.
  - Install `psutil` with:
    ```bash
    pip install psutil
    ```

- **Bash Script**: Requires a Linux environment with standard commands (`top`, `free`, `df`, `ps`).

## How to Run

### Running the Python Script

1. Run the Python script to view server performance stats:
   ```bash
   python server_performance.py
