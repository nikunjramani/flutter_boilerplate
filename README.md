# Flutter Boilerplate

## Overview
This Flutter boilerplate provides a structured project setup with essential configurations, state management, theme handling, and API integration. It follows a modular approach to enhance scalability and maintainability.

## Project Structure
```
flutter_boilerplate/
│-- lib/
│   │-- app/
│   │   │-- bloc/
│   │   │-- config/
│   │   │-- locator/
│   │   │-- router/
│   │   ├── my_app.dart
│   │-- common/
│   │   │-- app_colors.dart
│   │   │-- app_dimens.dart
│   │   │-- app_spacing.dart
│   │   │-- app_text_style.dart
│   │   │-- app_theme.dart
│   │   │-- font_family.dart
│   │-- data/
│   │   │-- api/
│   │   │   ├── interceptor/
│   │   │   ├── models/
│   │   │   ├── repositories/
│   │   │   ├── service/
│   │-- generated/
│   │-- l10n/
│   │-- pages/
│   │   │-- pageName/
│   │   │   ├── bloc/
│   │   │   ├── repository/
│   │   │   ├── widgets/
│   │   │   │   ├── name_page.dart
│   │-- services/
│   │-- utils/
│   │-- widgets/
│   │   ├── index.dart
│   │-- main.dart
│-- assets/
│   │-- fonts/
│   │-- icons/
│   │-- images/
│-- build/
│-- ios/
│-- linux/
│-- macos/
│-- test/
```

## Key Modules
### 1. **App Module**
- `bloc/`: Manages theme and localization state using BLoC pattern.
- `config/`: App configuration settings.
- `app_locator.dart`: Handles dependency injection.
- `app_router.dart`: Defines application-level navigation.
- `my_app.dart`: Root of the Flutter application.

### 2. **Common Module**
- `app_colors.dart`: Defines the color palette.
- `app_dimens.dart`: Defines common dimensions and spacing.
- `app_spacing.dart`: Manages spacing configurations.
- `app_text_style.dart`: Centralized text styles.
- `app_theme.dart`: Manages theme switching (light/dark mode).
- `font_family.dart`: Defines custom fonts.

### 3. **Data Module**
- `api/`: Handles API requests and interceptors.
- `models/`: Contains data models.
- `repositories/`: Handles data access logic.
- `service/`: Handles API calls and services.

### 4. **Pages Module**
- `PageName/`: Contains page-related components.
    - `bloc/`: State management for test pages.
    - `repository/`: Handles Api logic.
    - `widgets/`: UI components for test pages.
    - `name_page.dart`: Main test page UI.

### 5. **Utilities & Widgets**
- `utils/`: Utility functions and helpers.
- `widgets/`: Reusable UI components.
- `main.dart`: Entry point for widgets.

## Features
- **State Management**: Uses BLoC for efficient state handling.
- **Localization (l10n)**: Supports multiple languages.
- **Theme Switching**: Light and dark theme support.
- **Modular Code Structure**: Scalable and maintainable architecture.
- **API Handling**: Provides authentication and network request management.

## Getting Started
1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/flutter_boilerplate.git
   ```
2. Navigate to the project folder:
   ```sh
   cd flutter_boilerplate
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the project:
   ```sh
   flutter run
   ```

## Theming
- Defined in `app_theme.dart`
- Modify `app_text_style.dart` for typography consistency.

## API Requests
- Authentication handled via `auth_interceptor.dart`
- Use `api_request.dart` for structured API calls.

## Conclusion
This boilerplate offers a well-structured Flutter app setup with a clean architecture, making it easy to scale and maintain. Happy coding!

