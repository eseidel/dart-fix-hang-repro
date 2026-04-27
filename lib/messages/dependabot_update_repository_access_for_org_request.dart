// Spec descriptions copy prose verbatim into dartdoc, where `[x]`
// inside a sentence (placeholder text, ALL_CAPS tokens, license
// templates) is parsed as a symbol reference even when no such
// symbol exists. Suppress file-locally so the lint stays live
// elsewhere; spec authors do not always escape brackets.
// ignore_for_file: comment_references
import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// example: `{repository_ids_to_add: [123, 456], repository_ids_to_remove: [789]}`
@immutable
class DependabotUpdateRepositoryAccessForOrgRequest {
  DependabotUpdateRepositoryAccessForOrgRequest({
    this.repositoryIdsToAdd,
    this.repositoryIdsToRemove,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [DependabotUpdateRepositoryAccessForOrgRequest].
  factory DependabotUpdateRepositoryAccessForOrgRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'DependabotUpdateRepositoryAccessForOrgRequest',
      json,
      () => DependabotUpdateRepositoryAccessForOrgRequest(
        repositoryIdsToAdd: (json['repository_ids_to_add'] as List?)
            ?.cast<int>(),
        repositoryIdsToRemove: (json['repository_ids_to_remove'] as List?)
            ?.cast<int>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotUpdateRepositoryAccessForOrgRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return DependabotUpdateRepositoryAccessForOrgRequest.fromJson(json);
  }

  /// List of repository IDs to add.
  final List<int>? repositoryIdsToAdd;

  /// List of repository IDs to remove.
  final List<int>? repositoryIdsToRemove;

  /// Converts a [DependabotUpdateRepositoryAccessForOrgRequest]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'repository_ids_to_add': repositoryIdsToAdd,
      'repository_ids_to_remove': repositoryIdsToRemove,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    listHash(repositoryIdsToAdd),
    listHash(repositoryIdsToRemove),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DependabotUpdateRepositoryAccessForOrgRequest &&
        listsEqual(this.repositoryIdsToAdd, other.repositoryIdsToAdd) &&
        listsEqual(this.repositoryIdsToRemove, other.repositoryIdsToRemove);
  }
}
