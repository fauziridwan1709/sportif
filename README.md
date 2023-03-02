# :pushpin: Flutter Sportif App

[![Generic badge](https://img.shields.io/badge/Flutter-3.3.9-blue)](https://flutter.dev/docs)
[![Generic badge](https://img.shields.io/badge/Dart-2.18.5-blue)](https://dart.dev/guides)
[![Generic badge](https://img.shields.io/badge/license-MIT-blue)](https://opensource.org/licenses/MIT)
[![Generic badge](https://img.shields.io/badge/Platform-iOS,Android,Web,MacOs-purple)](https://dart.dev/guides)
[![Generic badge](https://img.shields.io/badge/development-v1.0.0-brightgreen)](https://github.com/fauziridwan1709/sportif)
[![Generic badge](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
[![Generic badge](https://img.shields.io/badge/style-Effective_Dart-blue.svg)](https://dart.dev/guides/language/effective-dart/style)

Flutter Sportif App version 1.0.0

## ⚡️Getting Started

### :dizzy_face: Style Guide

* [Effective Dart](https://www.dartlang.org/guides/language/effective-dart)
* [Style guide for flutter](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo)

### :evergreen_tree: Project Tree
```tree
├── android
├── assets
│   ├── icons
│   ├── images
│   └── fonts
│
├── ios  
├── lib
│   ├── base
│   │   └── paging
│   │
│   ├── config
│   │   └── config.dart
│   │
│   ├── constants
│   │   ├── links.dart
│   │   └── supported_locals.dart
│   │
│   ├── di
│   │   ├── di.config.dart
│   │   └── di.dart
│   │
│   ├── feature
│   ├── route
│   │   ├── go_router.dart
│   │   │   └── router.dart
│   │   │
│   │   └── app_routes.dart
│   │
│   ├── theme
│   │   ├── default_sportif.dart
│   │   └── neomorphic.dart
│   │
│   ├── app.dart
│   ├── main_development.dart
│   └── main_production.dart
│ 
├── macos 
├── test
│   └── widget_test.dart
│
├── utils
│   └── lib
│       ├── src 
│       │   ├── chronos
│       │   ├── extensions
│       │   ├── helper
│       │   ├── services
│       │   └── text_formatter
│       │
│       └── utils.dart
│
├── .gitignore
├── .metadata
├── analysis_options.yaml
├── CHANGELOG.md
├── genhtml.perl
├── LICENSE
├── pubspec.lock
├── pubspec.yaml
└── README.md
```

A brief description of the layout:

* `analytics` could be google, branch, etc.
* `utils` holds helper, services (plugin)
* `android` is android configuration directory.
* `.gitignore` varies per project, but all projects need to ignore `bin` directory.
* `test.yml` is the flutter-dart-lint config file.

Notes:

* genhtml.perl **MUST NOT** change well-defined command semantics, see genhtml.perl for details.

### :hammer_and_pick: Configurations

1. rename .env.example into .env inside core package

### :dark_sunglasses: Preparation

Make sure the frontend developer has a flow diagram.

### 🚚 How to run, drive, and build Apk

Make sure run this command before run the app to generate localizations.
```shell
flutter gen-l10n
```
Example how to run debug development app
```shell
flutter clean
flutter pub get
flutter run --flavor prototype -t lib/main_development.dart
```
Example how to run release development app
```shell
flutter clean
flutter pub get
flutter run --release --flavor development -t lib/main_development.dart
```
If you want to run with different flavor change app.flavor value to specific flavor. for ex:
```shell
flutter run --release --flavor production -t lib/main_production.dart
```

If you want to build with different flavor change app.flavor value to specific flavor. for ex:
```shell
flutter build apk --release --no-shrink --flavor development -t lib/main_development.dart --split-per-abi
flutter build apk --release --no-shrink --flavor production -t lib/main_production.dart --split-per-abi
```

Example how to build appbundle release production app
```shell
flutter clean
flutter pub get
flutter build appbundle --release --no-shrink --flavor production -t lib/main_production.dart
```

Example how to run flutter web app
```
flutter run -d chrome
```

Example how to drive automation test on development environment
note that automation test doesn't support release mode
```
flutter test integration_test
```

### ⚙️ Supported Flavor

1. development
2. production

### 🎯 Architecture & Pattern

Reso coder's fllutter clean architecture

![alt text](https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?ssl=1)

### 🧬️ State Management

Using [flutter BLoC](https://pub.dev/packages/flutter_bloc) for Business Logic Component Design Pattern. and [riverpod](https://pub.dev/packages/riverpod) for coupling and robustness

### :unicorn: Linter

Using [Very Good Analysis](https://pub.dev/packages/very_good_analysis) for optimized dart compiler.

Developed with 💙 by [Very Good Ventures][https://verygood.ventures/#gh-light-mode-only] 🦄

### :avocado: Design

Atomic Components pattern.

![alt text](https://miro.medium.com/max/1400/1*PcQ-m317YX6ct9ccBi6H1Q.png)

### :test_tube: How to Test Coverage

- on MacOs ```flutter test --coverage && genhtml -o coverage coverage/lcov.info```
- on Windows ```flutter test --coverage```. Then open your git bash and type ```./genhtml.perl coverage/lcov.info -o coverage/html```

### :new: Versioning

Using Semantic Versioning 2.0.0

Major.Minor.Patch

Given a version number MAJOR.MINOR.PATCH, increment the:

1. MAJOR version when you make incompatible API changes,
2. MINOR version when you add functionality in a backwards compatible manner, and
3. PATCH version when you make backwards compatible bug fixes.
   Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

and also supported by [cider](https://pub.dev/packages/cider).

to patch: `cider bump patch --bump-build` or `make patch`
to minor: `cider bump minor --bump-build` or `make minor`
to major: `cider bump major --bump-build` or `make major`

### :capital_abcd: Naming Convention

snake_case for file and folder.

### :capital_abcd: Git flow

Commit rules:
(feat|fix|docs|style|refactor|perf|test|build|ci):\/*

feat: A new feature
fix: A bug fix
docs: Documentation only changes
style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
refactor: A code change that neither fixes a bug nor adds a feature
perf: A code change that improves performance
test: Adding missing tests
build: Changes to the build/compilation/packaging process or auxiliary tools such as documentation generation
ci: Changes in the continuous integration/delivery setup

examples:
feat: Form Login
ci: refactor analysis job

before push
1. flutter analyze
2. flutter test

branch rules:
(feature|hotfix|coldfix|service|integration|ui)\/\/*
