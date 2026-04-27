import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/file_commit_commit.dart';
import 'package:github_out/models/file_commit_commit_author.dart';
import 'package:github_out/models/file_commit_commit_committer.dart';
import 'package:github_out/models/file_commit_commit_parents_inner.dart';
import 'package:github_out/models/file_commit_commit_tree.dart';
import 'package:github_out/models/file_commit_commit_verification.dart';
import 'package:github_out/models/file_commit_content.dart';
import 'package:github_out/models/file_commit_content_links.dart';
import 'package:meta/meta.dart';

/// {@template file_commit}
/// File Commit
/// File Commit
/// {@endtemplate}
@immutable
class FileCommit {
  /// {@macro file_commit}
  FileCommit({
    required this.content,
    required this.commit,
  });

  /// Converts a `Map<String, dynamic>` to a [FileCommit].
  factory FileCommit.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'FileCommit',
      json,
      () => FileCommit(
        content: FileCommitContent.maybeFromJson(
          checkedKey(json, 'content') as Map<String, dynamic>?,
        ),
        commit: FileCommitCommit.fromJson(
          json['commit'] as Map<String, dynamic>,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static FileCommit? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return FileCommit.fromJson(json);
  }

  final FileCommitContent? content;
  final FileCommitCommit commit;

  /// Converts a [FileCommit] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'content': content?.toJson(),
      'commit': commit.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    content,
    commit,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FileCommit &&
        this.content == other.content &&
        this.commit == other.commit;
  }
}
