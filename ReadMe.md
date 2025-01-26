# macOS Cleaner Script

**Welcome to the macOS Cleaner Script!** This script helps you declutter and optimize your macOS system by removing unnecessary files, clearing caches, and freeing up valuable disk space. Ideal for developers and regular users alike, this script offers an interactive menu for targeted cleaning tasks.

---

## Features

### What Can This Script Do?
- **Clean System Caches**: Removes system-level cache files to optimize performance.
- **Clean User Caches**: Deletes user-specific temporary files and cache.
- **Empty Trash**: Frees up space by removing all files in the trash bin.
- **Delete Old Logs**: Cleans system and user logs to free up storage.
- **Clean Xcode DerivedData**: Clears Xcode build data to save space (developer-friendly).
- **Flush DNS Cache**: Resets the DNS cache for resolving networking issues.
- **Optimize Disk Space**: Reduces local snapshots to recover space.
- **Restart Finder and Dock**: Refreshes essential macOS services after cleaning.

---

## Prerequisites

Before using this script, ensure that:
- You are running **macOS**.
- You have administrative privileges (sudo access) for certain cleaning tasks.
- You have installed **Bash** (available by default on macOS).

---

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/med-temimi/MacCleaner.git
   ```

2. Navigate to the script directory:
   ```bash
   cd MacCleaner
   ```

3. Make the script executable:
   ```bash
   chmod +x mac_cleaner.sh
   ```

---

## Usage

Run the script with the following command:
```bash
./sh mac_cleaner.sh
```

You will be presented with an interactive menu of options:
```
Please choose an option to clean macOS:
1. Clean system caches
2. Clean user caches
3. Empty trash
4. Delete old logs
5. Clean Xcode DerivedData
6. Flush DNS cache
7. Optimize disk space
8. Perform all cleanup tasks
9. Exit
```

Simply enter the number corresponding to the task you want to perform and follow the prompts. If you choose "Perform all cleanup tasks," the script will execute every cleanup function sequentially.

---

## Example Workflow

1. **To clean system caches**:
   - Run the script and select option `1`.
   - Enter your password (if prompted) to allow cache removal.

2. **To clean Xcode DerivedData**:
   - Run the script and select option `5`.
   - The script will remove the DerivedData folder automatically.

3. **To perform all tasks**:
   - Select option `8` to clean everything in one go.

---

## Contributing

Contributions are welcome! Feel free to fork the repository and submit a pull request for any new features or improvements.

### Steps to Contribute:
1. Fork this repository.
2. Create a new branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add feature-name"
   ```
4. Push your changes:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request on the main repository.

---


## Support

If you encounter any issues or have suggestions, feel free to open an issue in the repository.

Happy cleaning! 🧹

