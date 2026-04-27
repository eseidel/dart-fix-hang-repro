import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template gitignore_template}
/// Gitignore Template
/// Gitignore Template
/// {@endtemplate}
@immutable
class GitignoreTemplate {
  /// {@macro gitignore_template}
  const GitignoreTemplate({
    required this.name,
    required this.source,
  });

  /// Converts a `Map<String, dynamic>` to a [GitignoreTemplate].
  factory GitignoreTemplate.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'GitignoreTemplate',
      json,
      () => GitignoreTemplate(
        name: json['name'] as String,
        source: json['source'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static GitignoreTemplate? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return GitignoreTemplate.fromJson(json);
  }

  /// example: `'C'`
  final String name;

  /// example: `'# Object files
  /// *.o
  ///
  /// # Libraries
  /// *.lib
  /// *.a
  ///
  /// # Shared objects (inc. Windows DLLs)
  /// *.dll
  /// *.so
  /// *.so.*
  /// *.dylib
  ///
  /// # Executables
  /// *.exe
  /// *.out
  /// *.app
  /// '`
  final String source;

  /// Converts a [GitignoreTemplate] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'source': source,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    source,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GitignoreTemplate &&
        name == other.name &&
        source == other.source;
  }
}
