# 🚗 Almajd Cars - Mobile E-commerce Task

A high-performance car e-commerce mobile application built with **Flutter**, following **Clean Architecture** principles and the **BLoC** pattern.

---

## ✨ Features Implemented

* **🔍 Real-time Search:** Dynamic filtering of car listings by make and model.
* **📄 Car Details:** Comprehensive view for each car including technical specifications.
* **🎠 Image Carousel:** Smooth image sliding with indicators to showcase multiple car views.
* **⚖️ Comparison Tool:** Side-by-side comparison between different car models to help user decision-making.
* **✨ Advanced Shimmer Loading:** Elegant loading states for a premium user experience (Home & Details).
* **👋 Onboarding Experience:** Interactive introduction screens for first-time users using `introduction_screen`.
* **📱 Responsive UI:** Fully responsive design using `flutter_screenutil` to support various screen sizes.

---

## 🛠 Tech Stack & Architecture

This project follows **Clean Architecture** (Data, Domain, Presentation) to ensure scalability and testability.

* **State Management:** `flutter_bloc` & `bloc` for predictable state changes.
* **Navigation:** `auto_route` (Strongly-typed, declarative routing).
* **Dependency Injection:** `get_it` & `injectable` for clean service locator implementation.
* **Networking:** `dio` with `pretty_dio_logger` for robust API communication and debugging.
* **Backend:** `Firebase Auth` & `Cloud Firestore` (Base integration).
* **UI Enhancements:** `google_fonts`, `cached_network_image`, `shimmer`, and `smooth_page_indicator`.

---

## 📂 Project Structure
```text
lib/
 ├── core/              # Common utilities, DI, Routing, & Errors
 ├── features/
 │    └── cars/
 │         ├── data/     # Models, Data Sources, Repositories Impl
 │         ├── domain/   # Entities, Repository Interfaces, Use-cases
 │         └── presentation/
 │              ├── bloc/
 │              ├── pages/
 │              └── widgets/
 └── main.dart

