import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class ProjectsCreateForAuthenticatedUserRequest {
  ProjectsCreateForAuthenticatedUserRequest({
    required this.name,
    this.body,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ProjectsCreateForAuthenticatedUserRequest].
  factory ProjectsCreateForAuthenticatedUserRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ProjectsCreateForAuthenticatedUserRequest',
      json,
      () => ProjectsCreateForAuthenticatedUserRequest(
        name: json['name'] as String,
        body: json['body'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsCreateForAuthenticatedUserRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ProjectsCreateForAuthenticatedUserRequest.fromJson(json);
  }

  /// Name of the project
  /// example: `'Week One Sprint'`
  final String name;

  /// Body of the project
  /// example: `'This project represents the sprint of the first week in January'`
  final String? body;

  /// Converts a [ProjectsCreateForAuthenticatedUserRequest]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'body': body,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    body,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProjectsCreateForAuthenticatedUserRequest &&
        this.name == other.name &&
        this.body == other.body;
  }
}
