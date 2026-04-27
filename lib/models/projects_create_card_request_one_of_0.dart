import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class ProjectsCreateCardRequestOneOf0 {
  ProjectsCreateCardRequestOneOf0({
    required this.note,
  });

  /// Converts a `Map<String, dynamic>` to a [ProjectsCreateCardRequestOneOf0].
  factory ProjectsCreateCardRequestOneOf0.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ProjectsCreateCardRequestOneOf0',
      json,
      () => ProjectsCreateCardRequestOneOf0(
        note: checkedKey(json, 'note') as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsCreateCardRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ProjectsCreateCardRequestOneOf0.fromJson(json);
  }

  /// The project card's note
  /// example: `'Update all gems'`
  final String? note;

  /// Converts a [ProjectsCreateCardRequestOneOf0] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'note': note,
    };
  }

  @override
  int get hashCode => note.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProjectsCreateCardRequestOneOf0 && this.note == other.note;
  }
}
