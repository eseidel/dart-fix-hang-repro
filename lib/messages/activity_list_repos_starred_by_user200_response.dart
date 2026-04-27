import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/repository.dart';
import 'package:github_out/models/repository_code_search_index_status.dart';
import 'package:github_out/models/repository_merge_commit_message.dart';
import 'package:github_out/models/repository_merge_commit_title.dart';
import 'package:github_out/models/repository_permissions.dart';
import 'package:github_out/models/repository_squash_merge_commit_message.dart';
import 'package:github_out/models/repository_squash_merge_commit_title.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/starred_repository.dart';

sealed class ActivityListReposStarredByUser200Response {
  static ActivityListReposStarredByUser200Response fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError(
      'ActivityListReposStarredByUser200Response.fromJson',
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActivityListReposStarredByUser200Response? maybeFromJson(
    dynamic json,
  ) {
    if (json == null) {
      return null;
    }
    return ActivityListReposStarredByUser200Response.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
