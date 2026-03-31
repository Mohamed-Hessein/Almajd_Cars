# 📝 Cars E-Commerce App

A modern, high-performance automotive e-commerce mobile application built with **Flutter**. The app provides a seamless experience for browsing, comparing, and discovering car specifications using real-time APIs. It follows Clean Architecture and robust state management (Bloc).

---

## 📸 Screenshots

Here is a visual overview of the application flow, from onboarding to main features.

### 🌟 App Flow & Authentication

| Onboarding 1 | Onboarding 2 | Login Screen | Register Screen |
| :---: | :---: | :---: | :---: |
| <img src="screenshots/onboarding_1.png" width="200" alt="Onboarding 1"> | <img src="screenshots/onboarding_2.png" width="200" alt="Onboarding 2"> | <img src="screenshots/login.png" width="200" alt="Login Screen"> | <img src="screenshots/register.png" width="200" alt="Register Screen"> |

### 🚗 Main App Features

| Home Screen | Car Details | Car Comparison |
| :---: | :---: | :---: |
| <img src="screenshots/home.png" width="250" alt="Home Screen Screenshot"> | <img src="screenshots/home2.png" width="250" alt="Home Screen Screenshot"> | <img src="screenshots/details1.png" width="250" alt="Details Screen Screenshot"> | <img src="screenshots/details2.png" width="250" alt="Details Screen Screenshot"> | <img src="screenshots/compare.png" width="250" alt="Comparison Screen Screenshot"> | <img src="screenshots/compare2.png" width="250" alt="Comparison Screen Screenshot"> | <img src="screenshots/search.png" width="250" alt="search Screen Screenshot"> 

> **Note:** For the images to appear, you must create a directory named `screenshots` in the root of your project and place your images there with the exact filenames used above (e.g., `onboarding_1.png`, `home.png`).

---

## ✨ Key Features

This application includes a range of advanced features for car enthusiasts and buyers:

### 🆕 User Experience (Onboarding & Auth)
* **Intuitive Onboarding:** A two-step immersive onboarding flow to introduce key app features.
* **Secure Authentication:** Complete Login and Registration screens with validation.

### 🚀 Performance & UI
* **Smart Image Caching:** Smooth UI performance using `cached_network_image`.
* **Responsive Design:** Fully adaptive UI for all screen sizes (mobile/tablet) using `flutter_screenutil`.
* **Loading Shimmers:** Elegant loading states with the `shimmer` package for a premium feel.

### 🚘 Car Browsing & Comparison
* **Dynamic Car Listing:** Filtered and shuffled car lists with unique makes to prevent redundancy.
* **Smart Car Comparison System:** Select two cars to compare their technical specifications side-by-side.
* **Verified Badging:** Automated verification status displayed on premium listings.

### 🛠 Architecture & State
* **State Management:** Powered by [Flutter Bloc](https://pub.dev/packages/flutter_bloc) for predictable, event-based logic.
* **Type-Safe Routing:** Advanced navigation system with [Auto Route](https://pub.dev/packages/auto_route).

---

## 🛠 Tech Stack & Architecture

This project is built following **Clean Architecture** principles to ensure scalability, maintainability, and testability.

### Packages Used:
* **State Management:** `flutter_bloc`
* **Navigation:** `auto_route`
* **Local Storage:** `shared_preferences`
* **UI/Responsive:** `flutter_screenutil`, `shimmer`, `cached_network_image`
* **Dependency Injection:** `get_it`, `injectable`

### API Integration:
Integration with modern APIs for comprehensive car data.

---

## 🚀 How to Run the Project

Follow these steps to get the project running on your local machine:

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/YourUsername/cars_e_commerce.git](https://github.com/YourUsername/cars_e_commerce.git)
    ```
2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```
3.  **Generate Routing and Dependency Files:**
    Since the project uses `auto_route` and `build_runner`:
    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```
4.  **Run the app:**
    ```bash
    flutter run
    ```

---

## 📂 Project Structure Snippet (Clean Architecture)

```text
lib/
├── core/            # Reusable components, colors, themes, injection, and routing.
├── features/        # Business features
│   ├── auth/        # Login, Register, Onboarding features
│   └── home/        # Main Home feature
│       ├── data/    # Data sources, models, repositories implementations.
│       ├── domain/  # Entities, use cases, repositories contracts.
│       └── presentation/ # Bloc, widgets, and pages (UI).
└── main.dart        # Entry point.
