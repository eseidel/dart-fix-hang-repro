enum ChecksCreateRequestOneOf1Status {
  queued._('queued'),
  inProgress._('in_progress');

  const ChecksCreateRequestOneOf1Status._(this.value);

  /// Creates a ChecksCreateRequestOneOf1Status from a json string.
  factory ChecksCreateRequestOneOf1Status.fromJson(String json) {
    return ChecksCreateRequestOneOf1Status.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ChecksCreateRequestOneOf1Status value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ChecksCreateRequestOneOf1Status? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ChecksCreateRequestOneOf1Status.fromJson(json);
  }

  /// The value of the enum, as a string.  This is the exact value
  /// from the OpenAPI spec and will be used for network transport.
  final String value;

  /// Converts the enum to a json string.
  String toJson() => value;

  /// Returns the string value of the enum.
  @override
  String toString() => value;
}
