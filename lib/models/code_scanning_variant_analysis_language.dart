/// The language targeted by the CodeQL query
enum CodeScanningVariantAnalysisLanguage {
  cpp._('cpp'),
  csharp._('csharp'),
  go._('go'),
  java._('java'),
  javascript._('javascript'),
  python._('python'),
  ruby._('ruby'),
  rust._('rust'),
  swift._('swift');

  const CodeScanningVariantAnalysisLanguage._(this.value);

  /// Creates a CodeScanningVariantAnalysisLanguage from a json string.
  factory CodeScanningVariantAnalysisLanguage.fromJson(String json) {
    return CodeScanningVariantAnalysisLanguage.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningVariantAnalysisLanguage value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningVariantAnalysisLanguage? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningVariantAnalysisLanguage.fromJson(json);
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
