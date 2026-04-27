import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class GitTreeTreeInner {
  GitTreeTreeInner({
    required this.path,
    required this.mode,
    required this.type,
    required this.sha,
    this.size,
    this.url,
  });

  /// Converts a `Map<String, dynamic>` to a [GitTreeTreeInner].
  factory GitTreeTreeInner.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'GitTreeTreeInner',
      json,
      () => GitTreeTreeInner(
        path: json['path'] as String,
        mode: json['mode'] as String,
        type: json['type'] as String,
        sha: json['sha'] as String,
        size: (json['size'] as int?),
        url: json['url'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static GitTreeTreeInner? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return GitTreeTreeInner.fromJson(json);
  }

  /// example: `'test/file.rb'`
  final String path;

  /// example: `'040000'`
  final String mode;

  /// example: `'tree'`
  final String type;

  /// example: `'23f6827669e43831def8a7ad935069c8bd418261'`
  final String sha;

  /// example: `12`
  final int? size;

  /// example:
  /// `'https://api.github.com/repos/owner-482f3203ecf01f67e9deb18e/BBB_Private_Repo/git/blobs/23f6827669e43831def8a7ad935069c8bd418261'`
  final String? url;

  /// Converts a [GitTreeTreeInner] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'mode': mode,
      'type': type,
      'sha': sha,
      'size': size,
      'url': url,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    path,
    mode,
    type,
    sha,
    size,
    url,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GitTreeTreeInner &&
        this.path == other.path &&
        this.mode == other.mode &&
        this.type == other.type &&
        this.sha == other.sha &&
        this.size == other.size &&
        this.url == other.url;
  }
}
