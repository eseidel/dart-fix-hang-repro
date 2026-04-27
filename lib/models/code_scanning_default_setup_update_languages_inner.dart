enum CodeScanningDefaultSetupUpdateLanguagesInner {
  actions._('actions'),
  cCpp._('c-cpp'),
  csharp._('csharp'),
  go._('go'),
  javaKotlin._('java-kotlin'),
  javascriptTypescript._('javascript-typescript'),
  python._('python'),
  ruby._('ruby'),
  swift._('swift');

  const CodeScanningDefaultSetupUpdateLanguagesInner._(this.value);

  /// Creates a CodeScanningDefaultSetupUpdateLanguagesInner from a json string.
  factory CodeScanningDefaultSetupUpdateLanguagesInner.fromJson(String json) {
    return CodeScanningDefaultSetupUpdateLanguagesInner.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningDefaultSetupUpdateLanguagesInner value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningDefaultSetupUpdateLanguagesInner? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeScanningDefaultSetupUpdateLanguagesInner.fromJson(json);
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
