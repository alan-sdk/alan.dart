/// Represents the different modes that a transaction can be sent with.
enum SendMode {
  MODE_SYNC,
  MODE_ASYNC,
  MODE_BLOCK,
}

extension SendModeEtx on SendMode {
  String toJson() {
    switch (this) {
      case SendMode.MODE_SYNC:
        return 'sync';
      case SendMode.MODE_ASYNC:
        return 'async';
      case SendMode.MODE_BLOCK:
        return 'block';
      default:
        throw UnsupportedError('Unsupported SendMode: $this');
    }
  }
}
