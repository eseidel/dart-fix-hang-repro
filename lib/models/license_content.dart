import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/license_content_links.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:meta/meta.dart';

/// {@template license_content}
/// License Content
/// License Content
/// {@endtemplate}
@immutable
class LicenseContent {
  /// {@macro license_content}
  LicenseContent({
    required this.name,
    required this.path,
    required this.sha,
    required this.size,
    required this.url,
    required this.htmlUrl,
    required this.gitUrl,
    required this.downloadUrl,
    required this.type,
    required this.content,
    required this.encoding,
    required this.links,
    required this.license,
  });

  /// Converts a `Map<String, dynamic>` to a [LicenseContent].
  factory LicenseContent.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'LicenseContent',
      json,
      () => LicenseContent(
        name: json['name'] as String,
        path: json['path'] as String,
        sha: json['sha'] as String,
        size: (json['size'] as int),
        url: Uri.parse(json['url'] as String),
        htmlUrl: maybeParseUri(checkedKey(json, 'html_url') as String?),
        gitUrl: maybeParseUri(checkedKey(json, 'git_url') as String?),
        downloadUrl: maybeParseUri(checkedKey(json, 'download_url') as String?),
        type: json['type'] as String,
        content: json['content'] as String,
        encoding: json['encoding'] as String,
        links: LicenseContentLinks.fromJson(
          json['_links'] as Map<String, dynamic>,
        ),
        license: LicenseSimple.maybeFromJson(
          checkedKey(json, 'license') as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static LicenseContent? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return LicenseContent.fromJson(json);
  }

  final String name;
  final String path;
  final String sha;
  final int size;
  final Uri url;
  final Uri? htmlUrl;
  final Uri? gitUrl;
  final Uri? downloadUrl;
  final String type;
  final String content;
  final String encoding;
  final LicenseContentLinks links;

  /// License Simple
  /// License Simple
  final LicenseSimple? license;

  /// Converts a [LicenseContent] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'path': path,
      'sha': sha,
      'size': size,
      'url': url.toString(),
      'html_url': htmlUrl?.toString(),
      'git_url': gitUrl?.toString(),
      'download_url': downloadUrl?.toString(),
      'type': type,
      'content': content,
      'encoding': encoding,
      '_links': links.toJson(),
      'license': license?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    path,
    sha,
    size,
    url,
    htmlUrl,
    gitUrl,
    downloadUrl,
    type,
    content,
    encoding,
    links,
    license,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LicenseContent &&
        this.name == other.name &&
        this.path == other.path &&
        this.sha == other.sha &&
        this.size == other.size &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl &&
        this.gitUrl == other.gitUrl &&
        this.downloadUrl == other.downloadUrl &&
        this.type == other.type &&
        this.content == other.content &&
        this.encoding == other.encoding &&
        this.links == other.links &&
        this.license == other.license;
  }
}
