/// The rendering mode.
/// example: `'markdown'`
enum MarkdownRenderRequestMode {
  markdown._('markdown'),
  gfm._('gfm');

  const MarkdownRenderRequestMode._(this.value);

  /// Creates a MarkdownRenderRequestMode from a json string.
  factory MarkdownRenderRequestMode.fromJson(String json) {
    return MarkdownRenderRequestMode.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown MarkdownRenderRequestMode value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static MarkdownRenderRequestMode? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return MarkdownRenderRequestMode.fromJson(json);
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
