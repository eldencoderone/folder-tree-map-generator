# Folder Tree Map Generator v0.0.5

![Version](https://img.shields.io/badge/version-0.0.5-blue.svg)
![Platform](https://img.shields.io/badge/platform-Windows-lightgrey.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

A powerful and user-friendly Windows batch script that generates beautiful visual folder structure maps with multilingual support and system integration capabilities.

## 🌟 Features

- **📁 Visual Folder Mapping**: Creates clean, readable tree-style folder structures
- **🌍 Multilingual Support**: Available in 6 languages (English, Spanish, Italian, Japanese, French, Portuguese)
- **🖱️ Context Menu Integration**: Right-click on any folder to generate maps instantly
- **⚡ Fast Processing**: Uses PowerShell for efficient directory traversal
- **📝 Beautiful Output**: Generates well-formatted text files with headers and footers
- **🔧 Easy Installation**: One-click install/uninstall with administrator privileges
- **🎯 Portable**: Can run as standalone script without installation
- **🧹 Clean Uninstall**: Complete removal with registry cleanup and Explorer restart

## 🚀 Quick Start

### Method 1: Standalone Use
1. Download `generate_tree_map.bat`
2. Place it in any folder you want to map
3. Double-click to run
4. Choose option 2 to generate a map for the current folder

### Method 2: System Integration (Recommended)
1. Download `generate_tree_map.bat`
2. Right-click and select "Run as administrator"
3. Choose option 1 to install in context menu
4. Now you can right-click any folder and select "Generate Folder Tree Map"

## 📖 How to Use

### Main Menu Options
- **[1]** Install in context menu (right-click integration)
- **[2]** Generate tree map in current folder only
- **[3]** Uninstall from system
- **[4]** Change language (6 languages available)
- **[5]** Exit

### Language Support
The script automatically detects your system language or you can manually select from:
- 🇺🇸 English
- 🇪🇸 Español
- 🇮🇹 Italiano
- 🇯🇵 日本語 (Japanese)
- 🇫🇷 Français
- 🇵🇹 Português

## 📋 System Requirements

- Windows 7/8/10/11
- PowerShell (included in all modern Windows)
- Administrator privileges (only for system installation)

## 🔒 Security & Antivirus Information

This script is completely safe and transparent:

### ✅ What it does:
- Reads folder structures using standard Windows commands
- Creates text files with folder maps
- Modifies Windows registry only for context menu integration
- Uses only built-in Windows tools (PowerShell, reg.exe)

### ❌ What it does NOT do:
- No network connections
- No data collection or transmission
- No modification of system files
- No installation of external executables
- No access to personal files content

### 🛡️ False Positive Prevention:
- **Open Source**: Full code visibility - no hidden functions
- **Batch Script**: Plain text, human-readable code
- **Standard APIs**: Uses only Windows built-in commands
- **No Obfuscation**: Clean, commented code structure
- **Minimal Permissions**: Only requires admin rights for context menu installation

If your antivirus flags this script, it's likely a false positive due to registry modifications. You can:
1. Review the source code (it's all visible)
2. Add an exception for this file in your antivirus
3. Submit it to your antivirus vendor for analysis

## 📄 Example Output

```
===========================================================

                FOLDER TREE MAP
                v0.0.5 by elDenCoder
        GitHub: https://github.com/eldencoderone

===========================================================

> FOLDER STRUCTURE: MyProject
> GENERATED: 08/06/2025 15:30:42

-----------------------------------------------------------
+-- src/
|   +-- components/
|   |   +-- Button.js
|   |   +-- Header.js
|   +-- utils/
|   |   +-- helpers.js
|   +-- App.js
|   +-- index.js
+-- public/
|   +-- index.html
|   +-- favicon.ico
+-- package.json
+-- README.md
-----------------------------------------------------------

===========================================================

                TREE MAP COMPLETE
                v0.0.5 by elDenCoder

===========================================================
```

## 🔧 Installation Details

### What gets installed:
- Script copy to: `C:\Program Files\FolderTreeMapGenerator\`
- Registry entries for context menu integration
- No external dependencies or additional files

### What gets modified:
- `HKEY_CLASSES_ROOT\Directory\shell\GenerateTreeMap`
- `HKEY_CLASSES_ROOT\Directory\Background\shell\GenerateTreeMap`

### Clean uninstallation removes:
- All installed files
- All registry entries
- Clears icon cache
- Restarts Windows Explorer

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🐛 Bug Reports & Feature Requests

Found a bug or have a feature request? Please create an issue on GitHub with:
- Your Windows version
- Steps to reproduce (for bugs)
- Expected vs actual behavior
- Any error messages

## 🌟 Support the Project

If you find this tool useful, please:
- ⭐ Star this repository
- 🍴 Fork it and contribute
- 📢 Share it with others
- 🐛 Report issues you find

## 📚 Version History

### v0.0.5 (Current)
- Added multilingual support (6 languages)
- Improved installation process
- Enhanced error handling
- Better uninstallation with cache cleanup
- Added version information and credits

---

**Created by elDENcoder - DM 2025 v0.0.5**  
**GitHub: [https://github.com/eldencoderone](https://github.com/eldencoderone)**