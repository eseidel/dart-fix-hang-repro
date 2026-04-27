import 'package:github_out/models/issues_add_labels_request_one_of_0.dart';
import 'package:github_out/models/issues_add_labels_request_one_of_2.dart';
import 'package:github_out/models/issues_add_labels_request_one_of_2_labels_inner.dart';
import 'package:github_out/models/issues_add_labels_request_one_of_3_inner.dart';

sealed class IssuesAddLabelsRequest {
  static IssuesAddLabelsRequest fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('IssuesAddLabelsRequest.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesAddLabelsRequest? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return IssuesAddLabelsRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
