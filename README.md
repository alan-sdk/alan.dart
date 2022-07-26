![](.img/cover.png)

[![](https://img.shields.io/badge/docs-online-brightgreen)](https://alan-sdk.github.io/alan.dart/)
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/alan-sdk/alan.dart/Test)](https://github.com/alan-sdk/alan.dart/actions)
[![Codecov branch](https://img.shields.io/codecov/c/github/alan-sdk/alan.dart/main)](https://codecov.io/gh/alan-sdk/alan.dart/branch/main)
[![Pub Version](https://img.shields.io/pub/v/alan)](https://pub.dev/packages/alan)
[![](https://img.shields.io/badge/cosmos-stargate-blueviolet)](https://github.com/cosmos/cosmos-sdk/releases)
[![](https://img.shields.io/badge/compatible-flutter-blue)](https://flutter.dev)
[![GitHub](https://img.shields.io/github/license/alan-sdk/alan.dart)](https://github.com/alan-sdk/alan.dart/blob/main/LICENSE)

Alan.dart is a pure Dart package allowing you to easily integrate your Dart-based project with any [Cosmos](https://cosmos.network)-based blockchain.  

You can find the documentation on the [official website](https://alan-sdk.github.io/alan.dart/). 

## Cosmos-SDK compatibility table
Over time, we developed different versions of this library to be compatible with multiple Cosmos SDK releases. Following you can find the compatibility table that indicates which version you should use: 

|      Cosmos SDK version(s)      | Alan.dart branch | 
|:-------------------------------:|:----------------:|
| `v0.40.x`, `v0.41.x`, `v0.42.x` |    `v0.40.x`     |
|            `v0.45.x`            |    `v0.41.x`     |

## Getting started
To start using this library inside your project, just edit your `pubspec.yml` file adding the following lines: 

```yaml
dependencies:
  alan: <version>
```

The latest available version is:  
![Pub Version](https://img.shields.io/pub/v/alan)

You can even use a specific GitHub tag or branch if you want: 

```yaml
dependencies:
  alan:
    git:
      url: git://github.com/alan-sdk/alan.dart.git
      ref: <branch or tag>
```
