import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template secret_scanning_location_pull_request_comment}
/// Represents a 'pull_request_comment' secret scanning location type. This
/// location type shows that a secret was detected in a comment on a pull
/// request.
/// {@endtemplate}
@immutable
class SecretScanningLocationPullRequestComment {
  /// {@macro secret_scanning_location_pull_request_comment}
  SecretScanningLocationPullRequestComment({
    required this.pullRequestCommentUrl,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [SecretScanningLocationPullRequestComment].
  factory SecretScanningLocationPullRequestComment.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'SecretScanningLocationPullRequestComment',
      json,
      () => SecretScanningLocationPullRequestComment(
        pullRequestCommentUrl: Uri.parse(
          json['pull_request_comment_url'] as String,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecretScanningLocationPullRequestComment? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecretScanningLocationPullRequestComment.fromJson(json);
  }

  /// The API URL to get the pull request comment where the secret was
  /// detected.
  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/issues/comments/1081119451'`
  final Uri pullRequestCommentUrl;

  /// Converts a [SecretScanningLocationPullRequestComment]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'pull_request_comment_url': pullRequestCommentUrl.toString(),
    };
  }

  @override
  int get hashCode => pullRequestCommentUrl.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SecretScanningLocationPullRequestComment &&
        this.pullRequestCommentUrl == other.pullRequestCommentUrl;
  }
}
