#!/bin/bash

# macOS Cleaner Script
# Description: This script cleans up unnecessary files and clears cache on macOS to optimize system performance.

echo "Starting macOS Cleanup Script... 🧹"

# Function to clean system cache
clean_system_cache() {
    echo "🧼 Cleaning system caches..."
    sudo rm -rf /Library/Caches/* /System/Library/Caches/* ~/Library/Caches/*
    echo "✅ System caches cleared."
}

# Function to clean user cache
clean_user_cache() {
    echo "🧼 Cleaning user caches..."
    rm -rf ~/Library/Logs/* ~/Library/Caches/* ~/Library/Application\ Support/Caches/*
    echo "✅ User caches cleared."
}

# Function to remove trash files
clean_trash() {
    echo "🗑️ Emptying the Trash..."
    sudo rm -rf ~/.Trash/*
    echo "✅ Trash emptied."
}

# Function to remove old logs
clean_logs() {
    echo "🗒️ Deleting old logs..."
    sudo rm -rf /private/var/log/* /Library/Logs/* ~/Library/Logs/*
    echo "✅ Logs deleted."
}

# Function to clear Xcode derived data (if applicable)
clean_xcode() {
    if [ -d ~/Library/Developer/Xcode/DerivedData ]; then
        echo "🛠️ Cleaning Xcode DerivedData..."
        rm -rf ~/Library/Developer/Xcode/DerivedData/*
        echo "✅ Xcode DerivedData cleared."
    else
        echo "🛠️ Xcode DerivedData folder not found. Skipping..."
    fi
}

# Function to clean DNS cache
clean_dns_cache() {
    echo "🌐 Flushing DNS cache..."
    sudo dscacheutil -flushcache
    sudo killall -HUP mDNSResponder
    echo "✅ DNS cache flushed."
}

# Function to optimize disk space
optimize_disk() {
    echo "💾 Optimizing disk space..."
    sudo tmutil thinlocalsnapshots / 1000000000 4 > /dev/null 2>&1
    echo "✅ Disk space optimized."
}

# Function to restart Finder and Dock
restart_services() {
    echo "🔄 Restarting Finder and Dock..."
    killall Finder
    killall Dock
    echo "✅ Finder and Dock restarted."
}

# Display menu for cleaning options
echo "Please choose an option to clean macOS:"
echo "1. Clean system caches"
echo "2. Clean user caches"
echo "3. Empty trash"
echo "4. Delete old logs"
echo "5. Clean Xcode DerivedData"
echo "6. Flush DNS cache"
echo "7. Optimize disk space"
echo "8. Perform all cleanup tasks"
echo "9. Exit"

read -p "Enter your choice [1-9]: " choice

case $choice in
    1) clean_system_cache ;;
    2) clean_user_cache ;;
    3) clean_trash ;;
    4) clean_logs ;;
    5) clean_xcode ;;
    6) clean_dns_cache ;;
    7) optimize_disk ;;
    8) 
        clean_system_cache
        clean_user_cache
        clean_trash
        clean_logs
        clean_xcode
        clean_dns_cache
        optimize_disk
        restart_services
        ;;
    9) 
        echo "Exiting... Have a clean day! ✨"
        exit 0
        ;;
    *) 
        echo "❌ Invalid choice! Please try again."
        exit 1
        ;;
esac

echo "macOS cleanup completed successfully! 🎉"
