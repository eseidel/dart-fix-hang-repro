import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class CodeownersErrorsErrorsInner {
  CodeownersErrorsErrorsInner({
    required this.line,
    required this.column,
    this.source,
    required this.kind,
    this.suggestion,
    required this.message,
    required this.path,
  });

  /// Converts a `Map<String, dynamic>` to a [CodeownersErrorsErrorsInner].
  factory CodeownersErrorsErrorsInner.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CodeownersErrorsErrorsInner',
      json,
      () => CodeownersErrorsErrorsInner(
        line: (json['line'] as int),
        column: (json['column'] as int),
        source: json['source'] as String?,
        kind: json['kind'] as String,
        suggestion: json['suggestion'] as String?,
        message: json['message'] as String,
        path: json['path'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeownersErrorsErrorsInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeownersErrorsErrorsInner.fromJson(json);
  }

  /// The line number where this errors occurs.
  /// example: `7`
  final int line;

  /// The column number where this errors occurs.
  /// example: `3`
  final int column;

  /// The contents of the line where the error occurs.
  /// example: `'* user'`
  final String? source;

  /// The type of error.
  /// example: `'Invalid owner'`
  final String kind;

  /// Suggested action to fix the error. This will usually be `null`, but is
  /// provided for some common errors.
  /// example: `'The pattern `/` will never match anything, did you mean `*` instead?'`
  final String? suggestion;

  /// A human-readable description of the error, combining information from
  /// multiple fields, laid out for display in a monospaced typeface (for
  /// example, a command-line setting).
  /// example: `'Invalid owner on line 7:
  ///
  ///   * user
  ///     ^'`
  final String message;

  /// The path of the file where the error occured.
  /// example: `'.github/CODEOWNERS'`
  final String path;

  /// Converts a [CodeownersErrorsErrorsInner] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'line': line,
      'column': column,
      'source': source,
      'kind': kind,
      'suggestion': suggestion,
      'message': message,
      'path': path,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    line,
    column,
    source,
    kind,
    suggestion,
    message,
    path,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CodeownersErrorsErrorsInner &&
        this.line == other.line &&
        this.column == other.column &&
        this.source == other.source &&
        this.kind == other.kind &&
        this.suggestion == other.suggestion &&
        this.message == other.message &&
        this.path == other.path;
  }
}
