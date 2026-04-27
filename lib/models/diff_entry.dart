import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/diff_entry_status.dart';
import 'package:meta/meta.dart';

/// {@template diff_entry}
/// Diff Entry
/// Diff Entry
/// {@endtemplate}
@immutable
class DiffEntry {
  /// {@macro diff_entry}
  DiffEntry({
    required this.sha,
    required this.filename,
    required this.status,
    required this.additions,
    required this.deletions,
    required this.changes,
    required this.blobUrl,
    required this.rawUrl,
    required this.contentsUrl,
    this.patch,
    this.previousFilename,
  });

  /// Converts a `Map<String, dynamic>` to a [DiffEntry].
  factory DiffEntry.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'DiffEntry',
      json,
      () => DiffEntry(
        sha: json['sha'] as String,
        filename: json['filename'] as String,
        status: DiffEntryStatus.fromJson(json['status'] as String),
        additions: (json['additions'] as int),
        deletions: (json['deletions'] as int),
        changes: (json['changes'] as int),
        blobUrl: Uri.parse(json['blob_url'] as String),
        rawUrl: Uri.parse(json['raw_url'] as String),
        contentsUrl: Uri.parse(json['contents_url'] as String),
        patch: json['patch'] as String?,
        previousFilename: json['previous_filename'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DiffEntry? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return DiffEntry.fromJson(json);
  }

  /// example: `'bbcd538c8e72b8c175046e27cc8f907076331401'`
  final String sha;

  /// example: `'file1.txt'`
  final String filename;

  /// example: `'added'`
  final DiffEntryStatus status;

  /// example: `103`
  final int additions;

  /// example: `21`
  final int deletions;

  /// example: `124`
  final int changes;

  /// example:
  /// `'https://github.com/octocat/Hello-World/blob/6dcb09b5b57875f334f61aebed695e2e4193db5e/file1.txt'`
  final Uri blobUrl;

  /// example:
  /// `'https://github.com/octocat/Hello-World/raw/6dcb09b5b57875f334f61aebed695e2e4193db5e/file1.txt'`
  final Uri rawUrl;

  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/contents/file1.txt?ref=6dcb09b5b57875f334f61aebed695e2e4193db5e'`
  final Uri contentsUrl;

  /// example: `'@@ -132,7 +132,7 @@ module Test @@ -1000,7 +1000,7 @@ module Test'`
  final String? patch;

  /// example: `'file.txt'`
  final String? previousFilename;

  /// Converts a [DiffEntry] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'filename': filename,
      'status': status.toJson(),
      'additions': additions,
      'deletions': deletions,
      'changes': changes,
      'blob_url': blobUrl.toString(),
      'raw_url': rawUrl.toString(),
      'contents_url': contentsUrl.toString(),
      'patch': patch,
      'previous_filename': previousFilename,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    sha,
    filename,
    status,
    additions,
    deletions,
    changes,
    blobUrl,
    rawUrl,
    contentsUrl,
    patch,
    previousFilename,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DiffEntry &&
        this.sha == other.sha &&
        this.filename == other.filename &&
        this.status == other.status &&
        this.additions == other.additions &&
        this.deletions == other.deletions &&
        this.changes == other.changes &&
        this.blobUrl == other.blobUrl &&
        this.rawUrl == other.rawUrl &&
        this.contentsUrl == other.contentsUrl &&
        this.patch == other.patch &&
        this.previousFilename == other.previousFilename;
  }
}
