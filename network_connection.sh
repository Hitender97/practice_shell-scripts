#!/bin/bash

# Function to monitor network activities
monitor_network() {
    # Get network statistics using the "ss" command
    network_stats=$(ss -s)

    # Extract relevant information from the network statistics
    established=$(echo "$network_stats" | grep -i "ESTAB" | awk '{print $4}')
    orphaned=$(echo "$network_stats" | grep -i "orphaned" | awk '{print $6}')
    time_wait=$(echo "$network_stats" | grep -i "TIMEWAIT" | awk '{print $8}')
    closed=$(echo "$network_stats" | grep -i "CLOSED" | awk '{print $10}')

    # Display network activity based on the extracted information
    echo "Network Activity:"
    echo "-----------------"
    echo "Established connections: $established"
    echo "orphaned ports: $orphaned"
    echo "Time-wait connections: $time_wait"
    echo "Closed connections: $closed"
}

# Main script
while true; do
    # Prompt the user for an action
    echo "Select an option:"
    echo "1. Monitor network activities"
    echo "2. Exit"
    read -p "Enter your choice: " choice

    # Evaluate the user's choice using a case statement
    case $choice in
        1)
            monitor_network
            ;;
        2)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo
done
