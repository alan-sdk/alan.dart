FILES=-name '*.dart' ! -name '*.g.dart' ! -path './dart_tool' ! -path '*/generated/*' ! -path '*/proto/*'

lint:
	find . $(FILES) | tr '\n' ' ' | xargs dartfmt --dry-run --set-exit-if-changed
	dart analyze

format:
	find . $(FILES) | tr '\n' ' ' | xargs dartfmt -w
