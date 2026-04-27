// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/projects_create_card_request_one_of_0.dart';
import 'package:github_out/models/projects_create_card_request_one_of_1.dart';
import 'package:meta/meta.dart';

sealed class ProjectsCreateCardRequest {
  const ProjectsCreateCardRequest();

  factory ProjectsCreateCardRequest.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('note')) {
      return ProjectsCreateCardRequestProjectsCreateCardRequestOneOf0(
        ProjectsCreateCardRequestOneOf0.fromJson(json),
      );
    }
    if (json.containsKey('content_id')) {
      return ProjectsCreateCardRequestProjectsCreateCardRequestOneOf1(
        ProjectsCreateCardRequestOneOf1.fromJson(json),
      );
    }
    throw FormatException(
      'No variant of ProjectsCreateCardRequest matched json keys: ${json.keys.toList()}',
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsCreateCardRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ProjectsCreateCardRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class ProjectsCreateCardRequestProjectsCreateCardRequestOneOf0
    extends ProjectsCreateCardRequest {
  const ProjectsCreateCardRequestProjectsCreateCardRequestOneOf0(this.value);

  final ProjectsCreateCardRequestOneOf0 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProjectsCreateCardRequestProjectsCreateCardRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class ProjectsCreateCardRequestProjectsCreateCardRequestOneOf1
    extends ProjectsCreateCardRequest {
  const ProjectsCreateCardRequestProjectsCreateCardRequestOneOf1(this.value);

  final ProjectsCreateCardRequestOneOf1 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProjectsCreateCardRequestProjectsCreateCardRequestOneOf1 &&
        value == other.value;
  }
}
