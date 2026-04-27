import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class CodespacesSetRepositoriesForSecretForAuthenticatedUserRequest {
  CodespacesSetRepositoriesForSecretForAuthenticatedUserRequest({
    required this.selectedRepositoryIds,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodespacesSetRepositoriesForSecretForAuthenticatedUserRequest].
  factory CodespacesSetRepositoriesForSecretForAuthenticatedUserRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodespacesSetRepositoriesForSecretForAuthenticatedUserRequest',
      json,
      () => CodespacesSetRepositoriesForSecretForAuthenticatedUserRequest(
        selectedRepositoryIds: (json['selected_repository_ids'] as List)
            .cast<int>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespacesSetRepositoriesForSecretForAuthenticatedUserRequest?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CodespacesSetRepositoriesForSecretForAuthenticatedUserRequest.fromJson(
      json,
    );
  }

  /// An array of repository ids for which a codespace can access the secret.
  /// You can manage the list of selected repositories using the [List
  /// selected repositories for a user
  /// secret](https://docs.github.com/rest/codespaces/secrets#list-selected-repositories-for-a-user-secret),
  /// [Add a selected repository to a user
  /// secret](https://docs.github.com/rest/codespaces/secrets#add-a-selected-repository-to-a-user-secret),
  /// and [Remove a selected repository from a user
  /// secret](https://docs.github.com/rest/codespaces/secrets#remove-a-selected-repository-from-a-user-secret)
  /// endpoints.
  final List<int> selectedRepositoryIds;

  /// Converts a [CodespacesSetRepositoriesForSecretForAuthenticatedUserRequest]
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
    return other
            is CodespacesSetRepositoriesForSecretForAuthenticatedUserRequest &&
        listsEqual(this.selectedRepositoryIds, other.selectedRepositoryIds);
  }
}
