<div align="center">
<a href="https://opensource.org/licenses/MIT" target="_blank"><img src="https://img.shields.io/badge/License-MIT-yellow.svg"/></a>

<a href="https://github.com/zeref278"><img alt="GitHub: zeref278" src="https://img.shields.io/github/followers/zeref278?label=Follow&style=social" /></a>
<a href="https://github.com/zeref278/flutter_boilerplate"><img src="https://img.shields.io/github/stars/zeref278/flutter_boilerplate?style=social" /></a>

<a href="https://www.buymeacoffee.com/zeref278"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=zeref278&button_colour=5F7FFF&font_colour=ffffff&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00"></a>

</div>

# Flutter Boilerplate Project

A boilerplate project created in flutter using Bloc. Depend on code generation. before you work on this project you need to know following package usage
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


Before proceeding to work on this project, it is essential to understand how the following packages are used:
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
- [Flutter Intl](https://pub.dev/packages/intl)
- [Equatable](https://pub.dev/packages/equatable)
- [Permission Handler](https://pub.dev/packages/permission_handler)
- [Json Serializable](https://pub.dev/packages/json_serializable)


## Getting Started

The Boilerplate contains the minimal implementation required to create a new library or project. The repository code is preloaded with some basic components like basic app architecture, app theme, constants and required dependencies to create a new project. By using boiler plate code as standard initializer, we can have same patterns in all the projects that will inherit it. This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

## Changes Need to Done By Devops Team

## The following commands need to be executed by the DevOps team to update the app package name
```cmd
flutter pub run change_app_package_name:main com.example.new_package_name
```

## The following commands need to be executed by the DevOps team to update the app name
```cmd
flutter pub run rename_app_plus:main all="New App Name"
```

Executing this two command will update the app name and packages name across all platforms, including Android, iOS, Web, Windows, Linux, and macOS.



Go to project root and execute the following command in terminal to get the required dependencies and generate languages, freezed, flutter gen:

```cmd
flutter pub get
flutter pub run intl_utils:generate
flutter pub run build_runner build --delete-conflicting-outputs
```

```cmd
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
```

## Changes Need to Done By Developer
you need to update the package name and project description in the `pubspec.yml` file and also update all the imports in the Dart code to reflect the changes. To do this, you can follow these steps:

1. Open the `pubspec.yml` file in your project.

2. Locate the `name` field and update it with the new package name. For example:

```yaml
name: new_package_name
```

3. Find the `description` field and update it with the new project description:

```yaml
description: Your updated project description here
```

4. Save the changes to the `pubspec.yml` file.

5. Next, open your Dart files in Android Studio or any code editor that supports find and replace.

6. Use the "Find and Replace" feature (usually accessible with `Ctrl + Shift + R` on Windows or `Cmd + Shift + R` on macOS) to replace all occurrences of the old package name with the new package name.

For example, if your old package name was `old_package_name`, and you're renaming it to `new_package_name`, then in the "Find" field, you'd enter `old_package_name`, and in the "Replace" field, you'd enter `new_package_name`. Then, click on "Replace All" or "Replace in Files" to perform the replacements across all your Dart code files.

7. After the replacement is complete, review your code to ensure that all references to the old package name have been updated with the new package name.

8. Save your Dart code files.

With these steps, you will have successfully updated the package name and project description in your `pubspec.yml` file and also updated all the imports in your Dart code to reflect the changes.


## Update App Icon
Assuming you have your new app icon in the appropriate format (e.g., PNG) and ready to use, 
here's how you can update your app icon and rename the files
1. Place your new icon file (let's say "your_new_icon.png") in the "assets/icons/" folder of your app project.
2. Rename the icon files to "ic_launcher.png" now.


The following commands need to be executed by the developer to update the app icons.

```cmd
flutter pub get
flutter pub run flutter_launcher_icons
```

Executing this command will update the app icons across all platforms, including Android, iOS, Web, Windows, Linux, and macOS.



## Best practices — Basic tips on writing good flutter code
Follow Naming Conventions
Make sure to always follow the naming conventions proposed by dart/flutter.

**snake_case_with_underscores: file and folder names**
Example : test_file.dart

**UpperCamelCase: classes, type definitions, enums, extensions**

```
# classes
class MyAwesomeWidget { ... }
class HelperClass { ... }
# Type definitions
typedef Predicate<T> = bool Function(T value);
# Enums
enum Status { open, pending, done }
# Extension
extension NumberParsing<T> on String<T> { ...
```

**lowerCamelCase: variables, constants, class members, parameters**
```
# variables
String myString = 'What a wonderful day';
int myNumber = 3;
# constants
const String myString = 'I stay this way';
# parameters
void doMagic(firstParameter = 3) {
```


**“_” prefix: private variable names and methods**

Private variables and methods in dart are prefixed with an underscore.

(don’t use it for anything else to avoid confusion)

```
# just a private method name with "_"
void _privateMethod() {
  ...
}
# a private class property
class Song {
    final Boolean _isNice = true;
}
```

**Always specify types**
ALWAYS set the type while you write and define the variable and don’t push it to a later moment.
If you use the variable and then define the type a day/a week/a decade later, you will not know exactly what edge cases you had in mind.
No matter whether it is just a string, number, object-class, or an enum. Define it before you even finish the initialization command and then use it.


**Check instead of “force cast” types**
Dart is pretty smart about inferring types, but sometimes the system is wrong and we know better.
```
// check if the type is a certain type
if (melody is Song)
  song.title = 'Stille Nacht';
```

**Use const for static Widgets**
Flutter is pretty fast. It implements some smart logic to see whether something has changed and whether it should rerender. The bigger the application gets, however, the more of these checks for changed data have to be made internally.

**Use flutters null safety features**
If your variable could be nullable , you have to append the question mark to the type definition.


**Most important rule: Use strict analysis rules**
Run flutter analyze commands to analyze your code
It basically analyzes your code for faulty code styles, code smells, and problems.


**For More Information about code style you can read documentation here
[Code Style](https://dart.dev/effective-dart/style)

**you make changes to the freezed file, assets, or API-related files, you would need to run following commands**

Run command
```cmd
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
```