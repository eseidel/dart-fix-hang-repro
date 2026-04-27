// Spec descriptions copy prose verbatim into dartdoc, where `[x]`
// inside a sentence (placeholder text, ALL_CAPS tokens, license
// templates) is parsed as a symbol reference even when no such
// symbol exists. Suppress file-locally so the lint stays live
// elsewhere; spec authors do not always escape brackets.
// ignore_for_file: comment_references
/// The vulnerable dependency's relationship to your project.
///
/// > [!NOTE]
/// > We are rolling out support for dependency relationship across ecosystems.
/// This value will be "unknown" for all dependencies in unsupported ecosystems.
enum DependabotAlertDependencyRelationship {
  unknown._('unknown'),
  direct._('direct'),
  transitive._('transitive');

  const DependabotAlertDependencyRelationship._(this.value);

  /// Creates a DependabotAlertDependencyRelationship from a json string.
  factory DependabotAlertDependencyRelationship.fromJson(String json) {
    return DependabotAlertDependencyRelationship.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DependabotAlertDependencyRelationship value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotAlertDependencyRelationship? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DependabotAlertDependencyRelationship.fromJson(json);
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
