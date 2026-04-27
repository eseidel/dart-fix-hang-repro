import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class GitCommitTree {
  GitCommitTree({
    required this.sha,
    required this.url,
  });

  /// Converts a `Map<String, dynamic>` to a [GitCommitTree].
  factory GitCommitTree.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'GitCommitTree',
      json,
      () => GitCommitTree(
        sha: json['sha'] as String,
        url: Uri.parse(json['url'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static GitCommitTree? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return GitCommitTree.fromJson(json);
  }

  /// SHA for the commit
  /// example: `'7638417db6d59f3c431d3e1f261cc637155684cd'`
  final String sha;
  final Uri url;

  /// Converts a [GitCommitTree] to a `Map<String, dynamic>`.
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
    return other is GitCommitTree &&
        this.sha == other.sha &&
        this.url == other.url;
  }
}
