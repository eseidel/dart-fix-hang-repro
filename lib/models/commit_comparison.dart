import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/commit.dart';
import 'package:github_out/models/commit_author.dart';
import 'package:github_out/models/commit_commit.dart';
import 'package:github_out/models/commit_commit_tree.dart';
import 'package:github_out/models/commit_committer.dart';
import 'package:github_out/models/commit_comparison_status.dart';
import 'package:github_out/models/commit_parents_inner.dart';
import 'package:github_out/models/commit_stats.dart';
import 'package:github_out/models/diff_entry.dart';
import 'package:github_out/models/diff_entry_status.dart';
import 'package:github_out/models/empty_object.dart';
import 'package:github_out/models/git_user.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/verification.dart';
import 'package:meta/meta.dart';

/// {@template commit_comparison}
/// Commit Comparison
/// Commit Comparison
/// {@endtemplate}
@immutable
class CommitComparison {
  /// {@macro commit_comparison}
  CommitComparison({
    required this.url,
    required this.htmlUrl,
    required this.permalinkUrl,
    required this.diffUrl,
    required this.patchUrl,
    required this.baseCommit,
    required this.mergeBaseCommit,
    required this.status,
    required this.aheadBy,
    required this.behindBy,
    required this.totalCommits,
    required this.commits,
    this.files,
  });

  /// Converts a `Map<String, dynamic>` to a [CommitComparison].
  factory CommitComparison.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CommitComparison',
      json,
      () => CommitComparison(
        url: Uri.parse(json['url'] as String),
        htmlUrl: Uri.parse(json['html_url'] as String),
        permalinkUrl: Uri.parse(json['permalink_url'] as String),
        diffUrl: Uri.parse(json['diff_url'] as String),
        patchUrl: Uri.parse(json['patch_url'] as String),
        baseCommit: Commit.fromJson(
          json['base_commit'] as Map<String, dynamic>,
        ),
        mergeBaseCommit: Commit.fromJson(
          json['merge_base_commit'] as Map<String, dynamic>,
        ),
        status: CommitComparisonStatus.fromJson(json['status'] as String),
        aheadBy: (json['ahead_by'] as int),
        behindBy: (json['behind_by'] as int),
        totalCommits: (json['total_commits'] as int),
        commits: (json['commits'] as List)
            .map<Commit>((e) => Commit.fromJson(e as Map<String, dynamic>))
            .toList(),
        files: (json['files'] as List?)
            ?.map<DiffEntry>(
              (e) => DiffEntry.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CommitComparison? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CommitComparison.fromJson(json);
  }

  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/compare/master...topic'`
  final Uri url;

  /// example:
  /// `'https://github.com/octocat/Hello-World/compare/master...topic'`
  final Uri htmlUrl;

  /// example:
  /// `'https://github.com/octocat/Hello-World/compare/octocat:bbcd538c8e72b8c175046e27cc8f907076331401...octocat:0328041d1152db8ae77652d1618a02e57f745f17'`
  final Uri permalinkUrl;

  /// example:
  /// `'https://github.com/octocat/Hello-World/compare/master...topic.diff'`
  final Uri diffUrl;

  /// example:
  /// `'https://github.com/octocat/Hello-World/compare/master...topic.patch'`
  final Uri patchUrl;

  /// Commit
  /// Commit
  final Commit baseCommit;

  /// Commit
  /// Commit
  final Commit mergeBaseCommit;

  /// example: `'ahead'`
  final CommitComparisonStatus status;

  /// example: `4`
  final int aheadBy;

  /// example: `5`
  final int behindBy;

  /// example: `6`
  final int totalCommits;
  final List<Commit> commits;
  final List<DiffEntry>? files;

  /// Converts a [CommitComparison] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url.toString(),
      'html_url': htmlUrl.toString(),
      'permalink_url': permalinkUrl.toString(),
      'diff_url': diffUrl.toString(),
      'patch_url': patchUrl.toString(),
      'base_commit': baseCommit.toJson(),
      'merge_base_commit': mergeBaseCommit.toJson(),
      'status': status.toJson(),
      'ahead_by': aheadBy,
      'behind_by': behindBy,
      'total_commits': totalCommits,
      'commits': commits.map((e) => e.toJson()).toList(),
      'files': files?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    htmlUrl,
    permalinkUrl,
    diffUrl,
    patchUrl,
    baseCommit,
    mergeBaseCommit,
    status,
    aheadBy,
    behindBy,
    totalCommits,
    listHash(commits),
    listHash(files),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CommitComparison &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl &&
        this.permalinkUrl == other.permalinkUrl &&
        this.diffUrl == other.diffUrl &&
        this.patchUrl == other.patchUrl &&
        this.baseCommit == other.baseCommit &&
        this.mergeBaseCommit == other.mergeBaseCommit &&
        this.status == other.status &&
        this.aheadBy == other.aheadBy &&
        this.behindBy == other.behindBy &&
        this.totalCommits == other.totalCommits &&
        listsEqual(this.commits, other.commits) &&
        listsEqual(this.files, other.files);
  }
}
