<div align="center">
<a href="https://opensource.org/licenses/MIT" target="_blank"><img src="https://img.shields.io/badge/License-MIT-yellow.svg"/></a>

<a href="https://github.com/zeref278"><img alt="GitHub: zeref278" src="https://img.shields.io/github/followers/zeref278?label=Follow&style=social" /></a>
<a href="https://github.com/zeref278/flutter_boilerplate"><img src="https://img.shields.io/github/stars/zeref278/flutter_boilerplate?style=social" /></a>

<a href="https://www.buymeacoffee.com/zeref278"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=zeref278&button_colour=5F7FFF&font_colour=ffffff&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00"></a>

</div>

# Flutter Boilerplate Project

A boilerplate project created in flutter using Bloc, Retrofit. Depend on code generation.
## Features

* State management and examples
* Api integration and examples
* Code generation
* Local storage
* Logging
* Routing
* Dependency Injection
* Crashlytics template
* DarkTheme
* Multi languages
* Clean architecture

Some packages:
- [Freezed](https://pub.dev/packages/freezed)
- [Flutter Bloc](https://pub.dev/packages/flutter_bloc)
- [Flutter gen](https://pub.dev/packages/flutter_gen)
- [Dio](https://pub.dev/packages/retrofit)
- [Bloc test](https://pub.dev/packages/bloc_test)
- [Mockito](https://pub.dev/packages/mockito)
- [Go router](https://pub.dev/packages/go_router)
- [Dependency Injection](https://github.com/fluttercommunity/get_it)
- [Logger](https://pub.dev/packages/logger)
- [SharedPreferences](https://pub.dev/packages/shared_preferences)


## Getting Started

The Boilerplate contains the minimal implementation required to create a new library or project. The repository code is preloaded with some basic components like basic app architecture, app theme, constants and required dependencies to create a new project. By using boiler plate code as standard initializer, we can have same patterns in all the projects that will inherit it. This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

### Up-Coming Features:

* Handle multi bloc event in the same time by bloc concurrency example
* Load more infinite list using bloc example
* Authentication template


Go to project root and execute the following command in terminal to get the required dependencies and generate languages, freezed, flutter gen:

```cmd
flutter pub get
flutter pub run intl_utils:generate
flutter pub run build_runner build --delete-conflicting-outputs
```

```cmd
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
```

**Whenever change freezed file, assets, api**

Run command
```cmd
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
```