/// Whether a prebuild is currently available when creating a codespace for this
/// machine and repository. If a branch was not specified as a ref, the default
/// branch will be assumed. Value will be "null" if prebuilds are not supported
/// or prebuild availability could not be determined. Value will be "none" if no
/// prebuild is available. Latest values "ready" and "in_progress" indicate the
/// prebuild availability status.
/// example: `'ready'`
enum CodespaceMachinePrebuildAvailability {
  none._('none'),
  ready._('ready'),
  inProgress._('in_progress');

  const CodespaceMachinePrebuildAvailability._(this.value);

  /// Creates a CodespaceMachinePrebuildAvailability from a json string.
  factory CodespaceMachinePrebuildAvailability.fromJson(String json) {
    return CodespaceMachinePrebuildAvailability.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodespaceMachinePrebuildAvailability value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespaceMachinePrebuildAvailability? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodespaceMachinePrebuildAvailability.fromJson(json);
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
