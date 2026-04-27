import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class ProjectsCreateCardRequestOneOf1 {
  ProjectsCreateCardRequestOneOf1({
    required this.contentId,
    required this.contentType,
  });

  /// Converts a `Map<String, dynamic>` to a [ProjectsCreateCardRequestOneOf1].
  factory ProjectsCreateCardRequestOneOf1.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ProjectsCreateCardRequestOneOf1',
      json,
      () => ProjectsCreateCardRequestOneOf1(
        contentId: (json['content_id'] as int),
        contentType: json['content_type'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsCreateCardRequestOneOf1? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ProjectsCreateCardRequestOneOf1.fromJson(json);
  }

  /// The unique identifier of the content associated with the card
  /// example: `42`
  final int contentId;

  /// The piece of content associated with the card
  /// example: `'PullRequest'`
  final String contentType;

  /// Converts a [ProjectsCreateCardRequestOneOf1] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'content_id': contentId,
      'content_type': contentType,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    contentId,
    contentType,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProjectsCreateCardRequestOneOf1 &&
        this.contentId == other.contentId &&
        this.contentType == other.contentType;
  }
}
