import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template codespace_git_status}
/// Details about the codespace's git repository.
/// {@endtemplate}
@immutable
class CodespaceGitStatus {
  /// {@macro codespace_git_status}
  CodespaceGitStatus({
    this.ahead,
    this.behind,
    this.hasUnpushedChanges,
    this.hasUncommittedChanges,
    this.ref,
  });

  /// Converts a `Map<String, dynamic>` to a [CodespaceGitStatus].
  factory CodespaceGitStatus.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CodespaceGitStatus',
      json,
      () => CodespaceGitStatus(
        ahead: (json['ahead'] as int?),
        behind: (json['behind'] as int?),
        hasUnpushedChanges: json['has_unpushed_changes'] as bool?,
        hasUncommittedChanges: json['has_uncommitted_changes'] as bool?,
        ref: json['ref'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespaceGitStatus? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CodespaceGitStatus.fromJson(json);
  }

  /// The number of commits the local repository is ahead of the remote.
  /// example: `0`
  final int? ahead;

  /// The number of commits the local repository is behind the remote.
  /// example: `0`
  final int? behind;

  /// Whether the local repository has unpushed changes.
  final bool? hasUnpushedChanges;

  /// Whether the local repository has uncommitted changes.
  final bool? hasUncommittedChanges;

  /// The current branch (or SHA if in detached HEAD state) of the local
  /// repository.
  /// example: `'main'`
  final String? ref;

  /// Converts a [CodespaceGitStatus] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'ahead': ahead,
      'behind': behind,
      'has_unpushed_changes': hasUnpushedChanges,
      'has_uncommitted_changes': hasUncommittedChanges,
      'ref': ref,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    ahead,
    behind,
    hasUnpushedChanges,
    hasUncommittedChanges,
    ref,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CodespaceGitStatus &&
        this.ahead == other.ahead &&
        this.behind == other.behind &&
        this.hasUnpushedChanges == other.hasUnpushedChanges &&
        this.hasUncommittedChanges == other.hasUncommittedChanges &&
        this.ref == other.ref;
  }
}
