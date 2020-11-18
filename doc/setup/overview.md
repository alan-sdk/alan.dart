# Setup
Before you can use the entire methods provided by Alan.dart, you need to perform some required setup. 

## Getting Alan.dart
If you not have done it yet, you need to get Alan.dart. You can do this by editing your `pubspec.yaml` file as follows:

```yaml
dependencies:
  alan: <version>
```

The current published version of Alan.dart is the following:  
![Pub Version](https://img.shields.io/pub/v/alan)

### Using unpublished versions
If you want, you can also use unpublished versions of the library. To do it, instead of relying on [pub.dev](https://pub.dev), you can rely directly on the GitHub repository: 

```yaml
dependencies:
  alan:
    git:
      url: git://github.com/alan-sdk/alan.dart.git
      ref: <branch or tag>
```

## Generating the needed files
In order to be compatible with [Flutter](https://flutter.dev), Alan.dart uses a library called [reflectable](https://pub.dev/packages/reflectable) in order to generate some files. This is due to the fact that Flutter does not support reflection, which needed in some part of the Alan.dart codebase. 

### 1. Getting `build_runner`
The first thing that you need to do is to include [build_runner](https://pub.dev/packages/build_runner) inside the `dev_dependencies` section of our `pubspec.yml` file: 

```yaml
dev_dependencies:
  build_runner: <version>
``` 

The last version of `build_runner` currently is  
![Pub Version](https://img.shields.io/pub/v/build_runner)

Once you added that library to your dependencies, you need to run `pub update` (or `flutter pub update` if you're using Flutter).

### 2. Specify the build targets
The second step to follow is to specify for which file `build_runner` should build the needed `reflectable` implementations.

Usually, the targets should be:
- your `main.dart` file
- all the test files in which you need to use Alan.dart

To specify the files you need to first create a `build.yml` file inside the root folder of your project.

Then, inside that file you need to add the following: 

```yaml
targets:
  $default:
    builders:
      reflectable:
        generate_for:
          - relative/path/to/your/main.dart
          - relative/path/to/your/test_1.dart
          - ...    
          - relative/path/to/your/test_n.dart
```

**Note**. The paths should be all relative to your project root folder.

### 3. Build the files
Once you have specified all the targets, the next step is to generate the files. To do so, you can run the following command: 

```
pub run build_runner build

# If you're using Flutter, run 
# flutter pub run build_runner build
``` 

This will generate a series of `.reflectable.dart` files in the same folders of the targets specified inside the `build.yml` file.

### 4. Initialize `reflectable`
Finally, you need to properly initialize `reflectable` inside the target files. This can be done by: 

1. Importing the related `.reflectable.dart` file. 
2. Call the `initializeReflectable()` method as the first thing of your `main` method. 

## Complete example
### Folder structure
```
root
  |- lib
  |   |- main.dart   
  |- pubspec.yml
  |- build.yml 
``` 

### `pubspec.yml`
```yaml
name: test
description: Test project
version: 0.0.1

environment:
  sdk: ">=2.6.0 <3.0.0"

dependencies:
  alan: ^0.39.2

dev_dependencies:
  build_runner: ^1.10.0
```

### `build.yml`
```yaml
targets:
  $default:
    builders:
      reflectable:
        generate_for:
          - lib/main.dart
```

### `main.dart`
```dart
import 'dart:async';
import "package:http/http.dart" as http;

import 'package:alan/alan.dart';

import 'main.reflectable.dart';

void main() async {
  // Init reflectable
  initializeReflectable();

  final querier = GovQuerier.build(http.Client());
  
  final lcdEndpoint = "http://localhost:1317";
  final _proposals = querier.getProposals(lcdEndpoint);
}
```
