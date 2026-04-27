import 'package:github_out/models/validation_error.dart';
import 'package:github_out/models/validation_error_errors_inner.dart';
import 'package:github_out/models/validation_error_errors_inner_value.dart';
import 'package:github_out/models/validation_error_simple.dart';

sealed class ProjectsCreateCard422Response {
  static ProjectsCreateCard422Response fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('ProjectsCreateCard422Response.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsCreateCard422Response? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return ProjectsCreateCard422Response.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
