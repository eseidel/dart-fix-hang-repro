import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/reaction_rollup.dart';
import 'package:github_out/models/release_asset.dart';
import 'package:github_out/models/release_asset_state.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template release}
/// Release
/// A release.
/// {@endtemplate}
@immutable
class Release {
  /// {@macro release}
  Release({
    required this.url,
    required this.htmlUrl,
    required this.assetsUrl,
    required this.uploadUrl,
    required this.tarballUrl,
    required this.zipballUrl,
    required this.id,
    required this.nodeId,
    required this.tagName,
    required this.targetCommitish,
    required this.name,
    this.body,
    required this.draft,
    required this.prerelease,
    required this.createdAt,
    required this.publishedAt,
    required this.author,
    required this.assets,
    this.bodyHtml,
    this.bodyText,
    this.mentionsCount,
    this.discussionUrl,
    this.reactions,
  });

  /// Converts a `Map<String, dynamic>` to a [Release].
  factory Release.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Release',
      json,
      () => Release(
        url: Uri.parse(json['url'] as String),
        htmlUrl: Uri.parse(json['html_url'] as String),
        assetsUrl: Uri.parse(json['assets_url'] as String),
        uploadUrl: json['upload_url'] as String,
        tarballUrl: maybeParseUri(checkedKey(json, 'tarball_url') as String?),
        zipballUrl: maybeParseUri(checkedKey(json, 'zipball_url') as String?),
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        tagName: json['tag_name'] as String,
        targetCommitish: json['target_commitish'] as String,
        name: checkedKey(json, 'name') as String?,
        body: json['body'] as String?,
        draft: json['draft'] as bool,
        prerelease: json['prerelease'] as bool,
        createdAt: DateTime.parse(json['created_at'] as String),
        publishedAt: maybeParseDateTime(
          checkedKey(json, 'published_at') as String?,
        ),
        author: SimpleUser.fromJson(json['author'] as Map<String, dynamic>),
        assets: (json['assets'] as List)
            .map<ReleaseAsset>(
              (e) => ReleaseAsset.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        bodyHtml: json['body_html'] as String?,
        bodyText: json['body_text'] as String?,
        mentionsCount: (json['mentions_count'] as int?),
        discussionUrl: maybeParseUri(json['discussion_url'] as String?),
        reactions: ReactionRollup.maybeFromJson(
          json['reactions'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Release? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Release.fromJson(json);
  }

  final Uri url;
  final Uri htmlUrl;
  final Uri assetsUrl;
  final String uploadUrl;
  final Uri? tarballUrl;
  final Uri? zipballUrl;
  final int id;
  final String nodeId;

  /// The name of the tag.
  /// example: `'v1.0.0'`
  final String tagName;

  /// Specifies the commitish value that determines where the Git tag is
  /// created from.
  /// example: `'master'`
  final String targetCommitish;
  final String? name;
  final String? body;

  /// true to create a draft (unpublished) release, false to create a
  /// published one.
  /// example: `false`
  final bool draft;

  /// Whether to identify the release as a prerelease or a full release.
  /// example: `false`
  final bool prerelease;
  final DateTime createdAt;
  final DateTime? publishedAt;

  /// Simple User
  /// A GitHub user.
  final SimpleUser author;
  final List<ReleaseAsset> assets;
  final String? bodyHtml;
  final String? bodyText;
  final int? mentionsCount;

  /// The URL of the release discussion.
  final Uri? discussionUrl;

  /// Reaction Rollup
  final ReactionRollup? reactions;

  /// Converts a [Release] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url.toString(),
      'html_url': htmlUrl.toString(),
      'assets_url': assetsUrl.toString(),
      'upload_url': uploadUrl,
      'tarball_url': tarballUrl?.toString(),
      'zipball_url': zipballUrl?.toString(),
      'id': id,
      'node_id': nodeId,
      'tag_name': tagName,
      'target_commitish': targetCommitish,
      'name': name,
      'body': body,
      'draft': draft,
      'prerelease': prerelease,
      'created_at': createdAt.toIso8601String(),
      'published_at': publishedAt?.toIso8601String(),
      'author': author.toJson(),
      'assets': assets.map((e) => e.toJson()).toList(),
      'body_html': bodyHtml,
      'body_text': bodyText,
      'mentions_count': mentionsCount,
      'discussion_url': discussionUrl?.toString(),
      'reactions': reactions?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    htmlUrl,
    assetsUrl,
    uploadUrl,
    tarballUrl,
    zipballUrl,
    id,
    nodeId,
    tagName,
    targetCommitish,
    name,
    body,
    draft,
    prerelease,
    createdAt,
    publishedAt,
    author,
    listHash(assets),
    bodyHtml,
    bodyText,
    mentionsCount,
    discussionUrl,
    reactions,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Release &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl &&
        this.assetsUrl == other.assetsUrl &&
        this.uploadUrl == other.uploadUrl &&
        this.tarballUrl == other.tarballUrl &&
        this.zipballUrl == other.zipballUrl &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.tagName == other.tagName &&
        this.targetCommitish == other.targetCommitish &&
        this.name == other.name &&
        this.body == other.body &&
        this.draft == other.draft &&
        this.prerelease == other.prerelease &&
        this.createdAt == other.createdAt &&
        this.publishedAt == other.publishedAt &&
        this.author == other.author &&
        listsEqual(this.assets, other.assets) &&
        this.bodyHtml == other.bodyHtml &&
        this.bodyText == other.bodyText &&
        this.mentionsCount == other.mentionsCount &&
        this.discussionUrl == other.discussionUrl &&
        this.reactions == other.reactions;
  }
}
