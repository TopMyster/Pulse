# Pulse

## Overview
Pulse is a sleek, open‑source mood‑tracking app for iOS. It lets you quickly record how you feel throughout the day, view trends over time, and gain insights into your emotional patterns and the app is designed to be a lightweight companion for anyone who wants to stay mindful of their mood.

## Features
- **One‑tap mood entry** – Choose from a set of expressive emojis or type a custom note.
- **History & trends** – Visual graphs show how your mood changes over weeks and months.
- **Privacy‑first** – All data stays on the device; no networking or cloud sync.
- **Dark mode** – Looks great in both light and dark system themes.
- **Export** – Export your journal as a CSV file for personal backup.

## Prerequisites
- macOS (latest version recommended)
- Xcode 15+ with Swift 5.9 support
- iOS 15 or later device/simulator for testing

## Building the Project yourself
1. **Clone the repository**
   ```bash
   git clone https://github.com/your‑username/Pulse.git
   cd Pulse
   ```
2. **Open the workspace**
   ```bash
   open Pulse.xcodeproj
   ```
3. **Select a target device** – Choose an iPhone simulator or a connected device running iOS 15+.
4. **Build & Run** – Press `⌘R` in Xcode or click the Play button. Xcode will compile the SwiftUI sources and launch the app on the chosen device.
5. **Optional – Archive for distribution** – If you want to create an .ipa, select *Any iOS Device (arm64)*, then choose **Product → Archive**.

## Usage
- Tap the **+** button on the main screen to log a new mood.
- Swipe left on an entry to delete or edit it.
- Open the **Insights** tab to see trend graphs.
- Use the **Settings** screen to export your data or adjust appearance.

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests. Please follow these steps:
1. Fork the repository.
2. Create a feature branch (`git checkout -b feat/your‑feature`).
3. Make your changes and ensure the project still builds.
4. Submit a pull request with a clear description of what you changed.

## License
Pulse is released under the MIT License. See the [LICENSE](LICENSE) file for details.
