// Spec descriptions copy prose verbatim into dartdoc, where `[x]`
// inside a sentence (placeholder text, ALL_CAPS tokens, license
// templates) is parsed as a symbol reference even when no such
// symbol exists. Suppress file-locally so the lint stays live
// elsewhere; spec authors do not always escape brackets.
// ignore_for_file: comment_references
import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// example: `{apps: [my-app]}`
@immutable
class ReposSetAppAccessRestrictionsRequest {
  ReposSetAppAccessRestrictionsRequest({
    required this.apps,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposSetAppAccessRestrictionsRequest].
  factory ReposSetAppAccessRestrictionsRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposSetAppAccessRestrictionsRequest',
      json,
      () => ReposSetAppAccessRestrictionsRequest(
        apps: (json['apps'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposSetAppAccessRestrictionsRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposSetAppAccessRestrictionsRequest.fromJson(json);
  }

  /// The GitHub Apps that have push access to this branch. Use the slugified
  /// version of the app name. **Note**: The list of users, apps, and teams in
  /// total is limited to 100 items.
  final List<String> apps;

  /// Converts a [ReposSetAppAccessRestrictionsRequest]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'apps': apps,
    };
  }

  @override
  int get hashCode => listHash(apps).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposSetAppAccessRestrictionsRequest &&
        listsEqual(this.apps, other.apps);
  }
}
