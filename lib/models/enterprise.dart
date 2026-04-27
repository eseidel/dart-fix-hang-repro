import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template enterprise}
/// Enterprise
/// An enterprise on GitHub.
/// {@endtemplate}
@immutable
class Enterprise {
  /// {@macro enterprise}
  Enterprise({
    this.description,
    required this.htmlUrl,
    this.websiteUrl,
    required this.id,
    required this.nodeId,
    required this.name,
    required this.slug,
    required this.createdAt,
    required this.updatedAt,
    required this.avatarUrl,
  });

  /// Converts a `Map<String, dynamic>` to an [Enterprise].
  factory Enterprise.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Enterprise',
      json,
      () => Enterprise(
        description: json['description'] as String?,
        htmlUrl: Uri.parse(json['html_url'] as String),
        websiteUrl: maybeParseUri(json['website_url'] as String?),
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        name: json['name'] as String,
        slug: json['slug'] as String,
        createdAt: maybeParseDateTime(
          checkedKey(json, 'created_at') as String?,
        ),
        updatedAt: maybeParseDateTime(
          checkedKey(json, 'updated_at') as String?,
        ),
        avatarUrl: Uri.parse(json['avatar_url'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Enterprise? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Enterprise.fromJson(json);
  }

  /// A short description of the enterprise.
  final String? description;

  /// example: `'https://github.com/enterprises/octo-business'`
  final Uri htmlUrl;

  /// The enterprise's website URL.
  final Uri? websiteUrl;

  /// Unique identifier of the enterprise
  /// example: `42`
  final int id;

  /// example: `'MDEwOlJlcG9zaXRvcnkxMjk2MjY5'`
  final String nodeId;

  /// The name of the enterprise.
  /// example: `'Octo Business'`
  final String name;

  /// The slug url identifier for the enterprise.
  /// example: `'octo-business'`
  final String slug;

  /// example: `'2019-01-26T19:01:12Z'`
  final DateTime? createdAt;

  /// example: `'2019-01-26T19:14:43Z'`
  final DateTime? updatedAt;
  final Uri avatarUrl;

  /// Converts an [Enterprise] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'html_url': htmlUrl.toString(),
      'website_url': websiteUrl?.toString(),
      'id': id,
      'node_id': nodeId,
      'name': name,
      'slug': slug,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'avatar_url': avatarUrl.toString(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    description,
    htmlUrl,
    websiteUrl,
    id,
    nodeId,
    name,
    slug,
    createdAt,
    updatedAt,
    avatarUrl,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Enterprise &&
        this.description == other.description &&
        this.htmlUrl == other.htmlUrl &&
        this.websiteUrl == other.websiteUrl &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.name == other.name &&
        this.slug == other.slug &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.avatarUrl == other.avatarUrl;
  }
}
