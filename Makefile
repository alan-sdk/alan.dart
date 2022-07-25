FILES=-name '*.dart' ! -name '*.g.dart' ! -path './dart_tool' ! -path '*/generated/*' ! -path '*/proto/*'

lint:
	find . $(FILES) | tr '\n' ' ' | xargs dart format -o none --set-exit-if-changed
	dart analyze

format:
	find . $(FILES) | tr '\n' ' ' | xargs dart format
