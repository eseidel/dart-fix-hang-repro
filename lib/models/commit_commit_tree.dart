import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class CommitCommitTree {
  CommitCommitTree({
    required this.sha,
    required this.url,
  });

  /// Converts a `Map<String, dynamic>` to a [CommitCommitTree].
  factory CommitCommitTree.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CommitCommitTree',
      json,
      () => CommitCommitTree(
        sha: json['sha'] as String,
        url: Uri.parse(json['url'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CommitCommitTree? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CommitCommitTree.fromJson(json);
  }

  /// example: `'827efc6d56897b048c772eb4087f854f46256132'`
  final String sha;

  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/tree/827efc6d56897b048c772eb4087f854f46256132'`
  final Uri url;

  /// Converts a [CommitCommitTree] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'url': url.toString(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    sha,
    url,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CommitCommitTree &&
        this.sha == other.sha &&
        this.url == other.url;
  }
}
