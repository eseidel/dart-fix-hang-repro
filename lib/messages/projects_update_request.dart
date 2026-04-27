import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/projects_update_request_organization_permission.dart';
import 'package:meta/meta.dart';

@immutable
class ProjectsUpdateRequest {
  ProjectsUpdateRequest({
    this.name,
    this.body,
    this.state,
    this.organizationPermission,
    this.private,
  });

  /// Converts a `Map<String, dynamic>` to a [ProjectsUpdateRequest].
  factory ProjectsUpdateRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ProjectsUpdateRequest',
      json,
      () => ProjectsUpdateRequest(
        name: json['name'] as String?,
        body: json['body'] as String?,
        state: json['state'] as String?,
        organizationPermission:
            ProjectsUpdateRequestOrganizationPermission.maybeFromJson(
              json['organization_permission'] as String?,
            ),
        private: json['private'] as bool?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsUpdateRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ProjectsUpdateRequest.fromJson(json);
  }

  /// Name of the project
  /// example: `'Week One Sprint'`
  final String? name;

  /// Body of the project
  /// example: `'This project represents the sprint of the first week in January'`
  final String? body;

  /// State of the project; either 'open' or 'closed'
  /// example: `'open'`
  final String? state;

  /// The baseline permission that all organization members have on this
  /// project
  final ProjectsUpdateRequestOrganizationPermission? organizationPermission;

  /// Whether or not this project can be seen by everyone.
  final bool? private;

  /// Converts a [ProjectsUpdateRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'body': body,
      'state': state,
      'organization_permission': organizationPermission?.toJson(),
      'private': private,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    body,
    state,
    organizationPermission,
    private,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProjectsUpdateRequest &&
        this.name == other.name &&
        this.body == other.body &&
        this.state == other.state &&
        this.organizationPermission == other.organizationPermission &&
        this.private == other.private;
  }
}
