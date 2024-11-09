import psutil

def get_cpu_usage():
    return psutil.cpu_percent(interval=1)

def get_memory_usage():
    memory = psutil.virtual_memory()
    return memory.percent

def get_disk_usage():
    disk = psutil.disk_usage('/')
    return disk.percent

def get_network_stats():
    net_io = psutil.net_io_counters()
    return {
        "bytes_sent": net_io.bytes_sent,
        "bytes_received": net_io.bytes_recv,
    }

def main():
    print("CPU Usage:", get_cpu_usage(), "%")
    print("Memory Usage:", get_memory_usage(), "%")
    print("Disk Usage:", get_disk_usage(), "%")
    network = get_network_stats()
    print("Network - Bytes Sent:", network['bytes_sent'])
    print("Network - Bytes Received:", network['bytes_received'])

if __name__ == "__main__":
    main()
