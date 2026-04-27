import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class CodespacesSetSelectedReposForOrgSecretRequest {
  CodespacesSetSelectedReposForOrgSecretRequest({
    required this.selectedRepositoryIds,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodespacesSetSelectedReposForOrgSecretRequest].
  factory CodespacesSetSelectedReposForOrgSecretRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodespacesSetSelectedReposForOrgSecretRequest',
      json,
      () => CodespacesSetSelectedReposForOrgSecretRequest(
        selectedRepositoryIds: (json['selected_repository_ids'] as List)
            .cast<int>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespacesSetSelectedReposForOrgSecretRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodespacesSetSelectedReposForOrgSecretRequest.fromJson(json);
  }

  /// An array of repository ids that can access the organization secret. You
  /// can only provide a list of repository ids when the `visibility` is set
  /// to `selected`. You can add and remove individual repositories using the
  /// [Set selected repositories for an organization
  /// secret](https://docs.github.com/rest/codespaces/organization-secrets#set-selected-repositories-for-an-organization-secret)
  /// and [Remove selected repository from an organization
  /// secret](https://docs.github.com/rest/codespaces/organization-secrets#remove-selected-repository-from-an-organization-secret)
  /// endpoints.
  final List<int> selectedRepositoryIds;

  /// Converts a [CodespacesSetSelectedReposForOrgSecretRequest]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'selected_repository_ids': selectedRepositoryIds,
    };
  }

  @override
  int get hashCode => listHash(selectedRepositoryIds).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CodespacesSetSelectedReposForOrgSecretRequest &&
        listsEqual(this.selectedRepositoryIds, other.selectedRepositoryIds);
  }
}
