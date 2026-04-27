import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/git_tag_object.dart';
import 'package:github_out/models/git_tag_tagger.dart';
import 'package:github_out/models/verification.dart';
import 'package:meta/meta.dart';

/// {@template git_tag}
/// Git Tag
/// Metadata for a Git tag
/// {@endtemplate}
@immutable
class GitTag {
  /// {@macro git_tag}
  GitTag({
    required this.nodeId,
    required this.tag,
    required this.sha,
    required this.url,
    required this.message,
    required this.tagger,
    required this.object,
    this.verification,
  });

  /// Converts a `Map<String, dynamic>` to a [GitTag].
  factory GitTag.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'GitTag',
      json,
      () => GitTag(
        nodeId: json['node_id'] as String,
        tag: json['tag'] as String,
        sha: json['sha'] as String,
        url: Uri.parse(json['url'] as String),
        message: json['message'] as String,
        tagger: GitTagTagger.fromJson(json['tagger'] as Map<String, dynamic>),
        object: GitTagObject.fromJson(json['object'] as Map<String, dynamic>),
        verification: Verification.maybeFromJson(
          json['verification'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static GitTag? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return GitTag.fromJson(json);
  }

  /// example:
  /// `'MDM6VGFnOTQwYmQzMzYyNDhlZmFlMGY5ZWU1YmM3YjJkNWM5ODU4ODdiMTZhYw=='`
  final String nodeId;

  /// Name of the tag
  /// example: `'v0.0.1'`
  final String tag;

  /// example: `'940bd336248efae0f9ee5bc7b2d5c985887b16ac'`
  final String sha;

  /// URL for the tag
  /// example:
  /// `'https://api.github.com/repositories/42/git/tags/940bd336248efae0f9ee5bc7b2d5c985887b16ac'`
  final Uri url;

  /// Message describing the purpose of the tag
  /// example: `'Initial public release'`
  final String message;
  final GitTagTagger tagger;
  final GitTagObject object;

  /// Verification
  final Verification? verification;

  /// Converts a [GitTag] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'node_id': nodeId,
      'tag': tag,
      'sha': sha,
      'url': url.toString(),
      'message': message,
      'tagger': tagger.toJson(),
      'object': object.toJson(),
      'verification': verification?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    nodeId,
    tag,
    sha,
    url,
    message,
    tagger,
    object,
    verification,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GitTag &&
        this.nodeId == other.nodeId &&
        this.tag == other.tag &&
        this.sha == other.sha &&
        this.url == other.url &&
        this.message == other.message &&
        this.tagger == other.tagger &&
        this.object == other.object &&
        this.verification == other.verification;
  }
}
