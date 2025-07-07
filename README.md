# 📚 BookVerse

A simple and elegant mobile app to explore free and best-selling books, view book details, see similar books, and search for titles.

## 🧠 Architecture

The app follows the **MVVM (Model-View-ViewModel)** architecture for clean code separation and maintainability.

It uses **BLoC + Cubit** for state management, ensuring reactive and scalable UI updates.

## ✨ Features

- 📖 Browse a list of **free books**.
- 🔥 Explore **best-selling books**.
- 📘 View **detailed information** about each book.
- 🧩 Discover **similar books** based on the selected book.
- 🔍 **Search for books** by title or keyword.
- 🧠 Clean MVVM architecture for better code organization.
- ⚙️ Efficient state management using **BLoC + Cubit**.

## 🧰 Tech Stack

- **Flutter** – Cross-platform UI toolkit.
- **BLoC / Cubit** – State management.
- **MVVM Architecture** – Scalable and testable structure.
- **Dart** – Main programming language.

## 📂 Folder Structure

The project follows a clean MVVM structure with proper separation of concerns.

```bash
lib/
├── constants.dart               # Global constants used across the app
│
├── core/                        # Core shared modules
│   ├── errors/                 # Error handling and exceptions
│   ├── models/                 # Global models
│   ├── utils/                  # Utility classes and helpers
│   └── widgets/                # Reusable shared widgets
│
├── features/                   # App features grouped by module
│   ├── home/                   # Home screen feature
│   │   ├── data/              # Repositories, models, etc.
│   │   └── presentation/      # UI and BLoC/Cubit for home
│   │
│   ├── search/                # Book search feature
│   │   ├── data/
│   │   └── presentation/
│   │
│   └── splash/                # Splash screen
│       ├── data/
│       └── presentation/
│
└── main.dart                   # App entry point


🚀 Getting Started
flutter pub get
flutter run
