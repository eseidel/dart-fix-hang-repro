import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/gist_commit_change_status.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template gist_commit}
/// Gist Commit
/// Gist Commit
/// {@endtemplate}
@immutable
class GistCommit {
  /// {@macro gist_commit}
  GistCommit({
    required this.url,
    required this.version,
    required this.user,
    required this.changeStatus,
    required this.committedAt,
  });

  /// Converts a `Map<String, dynamic>` to a [GistCommit].
  factory GistCommit.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'GistCommit',
      json,
      () => GistCommit(
        url: Uri.parse(json['url'] as String),
        version: json['version'] as String,
        user: SimpleUser.maybeFromJson(
          checkedKey(json, 'user') as Map<String, dynamic>?,
        ),
        changeStatus: GistCommitChangeStatus.fromJson(
          json['change_status'] as Map<String, dynamic>,
        ),
        committedAt: DateTime.parse(json['committed_at'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static GistCommit? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return GistCommit.fromJson(json);
  }

  /// example:
  /// `'https://api.github.com/gists/aa5a315d61ae9438b18d/57a7f021a713b1c5a6a199b54cc514735d2d462f'`
  final Uri url;

  /// example: `'57a7f021a713b1c5a6a199b54cc514735d2d462f'`
  final String version;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? user;
  final GistCommitChangeStatus changeStatus;

  /// example: `'2010-04-14T02:15:15Z'`
  final DateTime committedAt;

  /// Converts a [GistCommit] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url.toString(),
      'version': version,
      'user': user?.toJson(),
      'change_status': changeStatus.toJson(),
      'committed_at': committedAt.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    version,
    user,
    changeStatus,
    committedAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GistCommit &&
        this.url == other.url &&
        this.version == other.version &&
        this.user == other.user &&
        this.changeStatus == other.changeStatus &&
        this.committedAt == other.committedAt;
  }
}
