/// State of this codespace.
/// example: `'Available'`
enum CodespaceWithFullRepositoryState {
  unknown._('Unknown'),
  created._('Created'),
  queued._('Queued'),
  provisioning._('Provisioning'),
  available._('Available'),
  awaiting._('Awaiting'),
  unavailable._('Unavailable'),
  deleted._('Deleted'),
  moved._('Moved'),
  shutdown._('Shutdown'),
  archived._('Archived'),
  starting._('Starting'),
  shuttingDown._('ShuttingDown'),
  failed._('Failed'),
  exporting._('Exporting'),
  updating._('Updating'),
  rebuilding._('Rebuilding');

  const CodespaceWithFullRepositoryState._(this.value);

  /// Creates a CodespaceWithFullRepositoryState from a json string.
  factory CodespaceWithFullRepositoryState.fromJson(String json) {
    return CodespaceWithFullRepositoryState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodespaceWithFullRepositoryState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespaceWithFullRepositoryState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodespaceWithFullRepositoryState.fromJson(json);
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
