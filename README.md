# Flutter Navigation & Routing Demo

A clean and simple Flutter application demonstrating how to manage page routes and the navigation stack. This project specifically focuses on navigating between multiple screens and clearing the navigation history using `pushAndRemoveUntil`.

## 🚀 Features

* **Basic Routing:** Transitioning between pages using `Navigator.push`.
* **Stack Management:** Clearing intermediate pages from the navigation stack.
* **Direct Home Return:** Using `Navigator.pushAndRemoveUntil` with `route.isFirst` to allow users to return directly to the Home screen via the device's physical back button, bypassing intermediate screens.

## 🛠️ Built With

* [Flutter](https://flutter.dev/)
* [Dart](https://dart.dev/)

## 📱 Navigation Flow

1. **Home Screen** -> Navigates to Screen A or Screen X.
2. **Screen A** -> Navigates to Screen B.
3. **Screen B & Screen X** -> Navigates to Screen Y (Clears the previous stack).
4. **Screen Y** -> Pressing the back button returns directly to the Home Screen.
