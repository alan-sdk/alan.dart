import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;
import 'package:test_coverage/test_coverage.dart';

Future main(List<String> arguments) async {
  final packageRoot = Directory.current;

  final parser = ArgParser();
  parser.addFlag('help', abbr: 'h', help: 'Show usage', negatable: false);
  parser.addOption(
    'exclude',
    help:
    'Exclude specific files or directories using glob pattern (relative to package root), '
        'e.g. "subdir/*", "**_vm_test.dart".',
  );

  final options = parser.parse(arguments);

  if (options.wasParsed('help')) {
    print(parser.usage);
    return;
  }

  Glob excludeGlob;
  if (options['exclude'] is String) {
    excludeGlob = Glob(options['exclude']);
  }

  final testFiles = findTestFiles(packageRoot, excludeGlob: excludeGlob);
  print('Found ${testFiles.length} test files.');
  generateMainScript(packageRoot, testFiles);
  print('Generated test-all script in test/.test_coverage.dart. '
      'Please make sure it is added to .gitignore.');
}
