import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class BranchRestrictionPolicyTeamsInner {
  BranchRestrictionPolicyTeamsInner({
    this.id,
    this.nodeId,
    this.url,
    this.htmlUrl,
    this.name,
    this.slug,
    this.description,
    this.privacy,
    this.notificationSetting,
    this.permission,
    this.membersUrl,
    this.repositoriesUrl,
    this.parent,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [BranchRestrictionPolicyTeamsInner].
  factory BranchRestrictionPolicyTeamsInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'BranchRestrictionPolicyTeamsInner',
      json,
      () => BranchRestrictionPolicyTeamsInner(
        id: (json['id'] as int?),
        nodeId: json['node_id'] as String?,
        url: json['url'] as String?,
        htmlUrl: json['html_url'] as String?,
        name: json['name'] as String?,
        slug: json['slug'] as String?,
        description: json['description'] as String?,
        privacy: json['privacy'] as String?,
        notificationSetting: json['notification_setting'] as String?,
        permission: json['permission'] as String?,
        membersUrl: json['members_url'] as String?,
        repositoriesUrl: json['repositories_url'] as String?,
        parent: json['parent'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static BranchRestrictionPolicyTeamsInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return BranchRestrictionPolicyTeamsInner.fromJson(json);
  }

  final int? id;
  final String? nodeId;
  final String? url;
  final String? htmlUrl;
  final String? name;
  final String? slug;
  final String? description;
  final String? privacy;
  final String? notificationSetting;
  final String? permission;
  final String? membersUrl;
  final String? repositoriesUrl;
  final String? parent;

  /// Converts a [BranchRestrictionPolicyTeamsInner]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'html_url': htmlUrl,
      'name': name,
      'slug': slug,
      'description': description,
      'privacy': privacy,
      'notification_setting': notificationSetting,
      'permission': permission,
      'members_url': membersUrl,
      'repositories_url': repositoriesUrl,
      'parent': parent,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    url,
    htmlUrl,
    name,
    slug,
    description,
    privacy,
    notificationSetting,
    permission,
    membersUrl,
    repositoriesUrl,
    parent,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BranchRestrictionPolicyTeamsInner &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl &&
        this.name == other.name &&
        this.slug == other.slug &&
        this.description == other.description &&
        this.privacy == other.privacy &&
        this.notificationSetting == other.notificationSetting &&
        this.permission == other.permission &&
        this.membersUrl == other.membersUrl &&
        this.repositoriesUrl == other.repositoriesUrl &&
        this.parent == other.parent;
  }
}
