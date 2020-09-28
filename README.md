![](.img/cover.png)

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/alan-sdk/alan.dart/Test)](https://github.com/alan-sdk/alan.dart/actions)
[![Codecov branch](https://img.shields.io/codecov/c/github/alan-sdk/alan.dart/master)](https://codecov.io/gh/alan-sdk/alan.dart/branch/master)
[![Pub Version](https://img.shields.io/pub/v/alan)](https://pub.dev/packages/alan)
[![](https://img.shields.io/badge/cosmos-v0.39.x-blueviolet)](https://github.com/cosmos/cosmos-sdk/releases)
[![](https://img.shields.io/badge/compatible-flutter-blue)](https://flutter.dev)
[![GitHub](https://img.shields.io/github/license/alan-sdk/alan.dart)](https://github.com/alan-sdk/alan.dart/blob/master/LICENSE)

Alan.dart is a pure Dart package allowing you to easily integrate your Dart-based project with any [Cosmos](https://cosmos.network)-based blockchain.  

You can find the documentation inside the [`doc` folder](doc). 

## Cosmos-SDK compatibility table
Over time the Cosmos SDK has changed a lot, and many versions of it have been released. Since the development of this library started, we had to adapt to the `0.37.x` and `0.38.x` versions. 

Recently, however, the Cosmos team decided that they would focus on building a LTS (_Long Term Support_) version of the SDK. This will be the `0.39.x` version series. 

For this reason, we decided that we will focus on building this SDK based on such version of the Cosmos SDK. However, we also released two versions of this library to be compatible with older Cosmos SDK versions: 

- [Version 0.37.x](https://github.com/alan-sdk/alan.dart/releases/tag/v0.37.x) compatible with all the Cosmos SDK 0.37.x release series
- [Version 0.38.x](https://github.com/alan-sdk/alan.dart/releases/tag/v0.38.x) compatible with all the Cosmos SDK 0.38.x release series 

Please note that those versions of the Alan.dart library will most probably not contain all the features of recent versions. We highly suggest you to update your Cosmos SDK version to 0.39.x and use the latest version of the Alan.dart library with it.  

## Getting started
To start using this library inside your project, just edit your `pubspec.yml` file adding the following lines: 

```yml
dependencies:
  alan:
    git:
      url: git://github.com/alan-sdk/alan.dart.git
```

You can even use a specific tag if you want: 

```yml
dependencies:
  alan:
    git:
      url: git://github.com/alan-sdk/alan.dart.git
      ref: tags/v0.38.x
```
