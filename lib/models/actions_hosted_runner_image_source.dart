/// The image provider.
enum ActionsHostedRunnerImageSource {
  github._('github'),
  partner._('partner'),
  custom._('custom');

  const ActionsHostedRunnerImageSource._(this.value);

  /// Creates a ActionsHostedRunnerImageSource from a json string.
  factory ActionsHostedRunnerImageSource.fromJson(String json) {
    return ActionsHostedRunnerImageSource.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ActionsHostedRunnerImageSource value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsHostedRunnerImageSource? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ActionsHostedRunnerImageSource.fromJson(json);
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
