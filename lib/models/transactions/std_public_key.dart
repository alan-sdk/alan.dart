class StdPublicKey {
  final String type;
  final String value;

  StdPublicKey({this.type, this.value})
      : assert(type != null),
        assert(value != null);

  Map<String, dynamic> toJson() => {
        'type': type,
        'value': value,
      };
}
