import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/content_symlink_links.dart';
import 'package:github_out/models/content_symlink_type.dart';
import 'package:meta/meta.dart';

/// {@template content_symlink}
/// Symlink Content
/// An object describing a symlink
/// {@endtemplate}
@immutable
class ContentSymlink {
  /// {@macro content_symlink}
  ContentSymlink({
    required this.type,
    required this.target,
    required this.size,
    required this.name,
    required this.path,
    required this.sha,
    required this.url,
    required this.gitUrl,
    required this.htmlUrl,
    required this.downloadUrl,
    required this.links,
  });

  /// Converts a `Map<String, dynamic>` to a [ContentSymlink].
  factory ContentSymlink.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ContentSymlink',
      json,
      () => ContentSymlink(
        type: ContentSymlinkType.fromJson(json['type'] as String),
        target: json['target'] as String,
        size: (json['size'] as int),
        name: json['name'] as String,
        path: json['path'] as String,
        sha: json['sha'] as String,
        url: Uri.parse(json['url'] as String),
        gitUrl: maybeParseUri(checkedKey(json, 'git_url') as String?),
        htmlUrl: maybeParseUri(checkedKey(json, 'html_url') as String?),
        downloadUrl: maybeParseUri(checkedKey(json, 'download_url') as String?),
        links: ContentSymlinkLinks.fromJson(
          json['_links'] as Map<String, dynamic>,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ContentSymlink? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ContentSymlink.fromJson(json);
  }

  final ContentSymlinkType type;
  final String target;
  final int size;
  final String name;
  final String path;
  final String sha;
  final Uri url;
  final Uri? gitUrl;
  final Uri? htmlUrl;
  final Uri? downloadUrl;
  final ContentSymlinkLinks links;

  /// Converts a [ContentSymlink] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'target': target,
      'size': size,
      'name': name,
      'path': path,
      'sha': sha,
      'url': url.toString(),
      'git_url': gitUrl?.toString(),
      'html_url': htmlUrl?.toString(),
      'download_url': downloadUrl?.toString(),
      '_links': links.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    type,
    target,
    size,
    name,
    path,
    sha,
    url,
    gitUrl,
    htmlUrl,
    downloadUrl,
    links,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ContentSymlink &&
        this.type == other.type &&
        this.target == other.target &&
        this.size == other.size &&
        this.name == other.name &&
        this.path == other.path &&
        this.sha == other.sha &&
        this.url == other.url &&
        this.gitUrl == other.gitUrl &&
        this.htmlUrl == other.htmlUrl &&
        this.downloadUrl == other.downloadUrl &&
        this.links == other.links;
  }
}
