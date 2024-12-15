# Rootless_Module Documentation

## Overview
This script is a utility for customizing Android devices by adjusting screen resolution, applying various system optimizations, and displaying device-specific details. It includes safety precautions and warnings for proper usage.

---

## Features
- **Manual Custom Screen Size**: Adjust the device's screen resolution to fit specific needs.
- **Auto Apply Game Drivers**: Automatically set game-specific drivers for optimized performance.
- **Auto Apply Angle-GL Drivers**: Configure Angle-GL drivers for improved graphics rendering.
- **Auto Remove Bloatwares**: Remove unnecessary pre-installed applications.
- **Auto Clear Cache**: Free up storage by clearing system cache.
- **Auto Clean Up RAM**: Enhance performance by managing RAM usage.
- **Auto Set MAX Screen Refresh Rate**: Automatically set the maximum screen refresh rate.
- **Auto Compile Dex Packages**: Speed up operations by pre-compiling `.dex` files.

---

## Prerequisites
1. An Android device (Rooted or Without Root).
2. Access to `adb` or the terminal on your device.
3. Wireless ADB method using various apps such brevent, shizuku
4. Basic knowledge of shell scripting and terminal commands.

---

## How to Use
1. **Run the Script**:
   - Use the command:  
     ```bash
     sh ./kokoro.sh
     ```
   - To set a custom resolution, provide the width and height as an argument:  
     ```bash
     sh ./kokoro.sh <WidthxHeight>
     ```

2. **Supported Resolution Range**:  
   - Minimum: `144x322`
   - Maximum: Device's default screen resolution.

---

## Outputs
- **Device Information**:
  - Model
  - Renderer and GPU
  - Chipset
  - Battery Level
  - Default and Current Screen Resolution
  - Maximum Refresh Rate
  - Network Type
  - Locale
  - Device Serial Number
  - Physical and Override Density
  - CPU Details
  - RAM Details
  - Android Version, Kernel, and Architecture

---

## Warnings and Notes
- **Disclaimer**: Use this script at your own risk. The author is not responsible for any damage resulting from improper use.
- **Device Compatibility**: Not all features may work on every device.
- **Performance**: Flashing modules may take longer due to the compilation of multiple packages and drivers.

---

## Licensing
- **Copyright**: All rights reserved. Unauthorized reproduction, distribution, or resale is strictly prohibited.
- **Premium Version**: For extended usage and additional features, contact the author.

---

## Contact
- **Author**: Kenneth Panio  
- **GitHub**: [haji-mix](https://github.com/haji-mix)  
- **TikTok**: [@atomicslashstudio](https://www.tiktok.com/@atomicslashstudio)  
- **Facebook**: [61567428059504](https://www.facebook.com/61567428059504)  
- **YouTube**: AtomicSlashStudio  

Follow these platforms for updates and support.