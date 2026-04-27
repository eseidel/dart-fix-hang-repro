import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template enterprise_team}
/// Enterprise Team
/// Group of enterprise owners and/or members
/// {@endtemplate}
@immutable
class EnterpriseTeam {
  /// {@macro enterprise_team}
  EnterpriseTeam({
    required this.id,
    required this.name,
    this.description,
    required this.slug,
    required this.url,
    this.syncToOrganizations,
    this.organizationSelectionType,
    this.groupId,
    this.groupName,
    required this.htmlUrl,
    required this.membersUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Converts a `Map<String, dynamic>` to an [EnterpriseTeam].
  factory EnterpriseTeam.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'EnterpriseTeam',
      json,
      () => EnterpriseTeam(
        id: (json['id'] as int),
        name: json['name'] as String,
        description: json['description'] as String?,
        slug: json['slug'] as String,
        url: Uri.parse(json['url'] as String),
        syncToOrganizations: json['sync_to_organizations'] as String?,
        organizationSelectionType:
            json['organization_selection_type'] as String?,
        groupId: json['group_id'] as String?,
        groupName: json['group_name'] as String?,
        htmlUrl: Uri.parse(json['html_url'] as String),
        membersUrl: json['members_url'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EnterpriseTeam? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return EnterpriseTeam.fromJson(json);
  }

  final int id;
  final String name;
  final String? description;
  final String slug;
  final Uri url;

  /// example: `'disabled | all'`
  final String? syncToOrganizations;

  /// example: `'disabled | all'`
  final String? organizationSelectionType;

  /// example: `'62ab9291-fae2-468e-974b-7e45096d5021'`
  final String? groupId;

  /// example: `'Justice League'`
  final String? groupName;

  /// example: `'https://github.com/enterprises/dc/teams/justice-league'`
  final Uri htmlUrl;
  final String membersUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  /// Converts an [EnterpriseTeam] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'slug': slug,
      'url': url.toString(),
      'sync_to_organizations': syncToOrganizations,
      'organization_selection_type': organizationSelectionType,
      'group_id': groupId,
      'group_name': groupName,
      'html_url': htmlUrl.toString(),
      'members_url': membersUrl,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    description,
    slug,
    url,
    syncToOrganizations,
    organizationSelectionType,
    groupId,
    groupName,
    htmlUrl,
    membersUrl,
    createdAt,
    updatedAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EnterpriseTeam &&
        this.id == other.id &&
        this.name == other.name &&
        this.description == other.description &&
        this.slug == other.slug &&
        this.url == other.url &&
        this.syncToOrganizations == other.syncToOrganizations &&
        this.organizationSelectionType == other.organizationSelectionType &&
        this.groupId == other.groupId &&
        this.groupName == other.groupName &&
        this.htmlUrl == other.htmlUrl &&
        this.membersUrl == other.membersUrl &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt;
  }
}
