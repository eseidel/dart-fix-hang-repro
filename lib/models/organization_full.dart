import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/organization_full_plan.dart';
import 'package:meta/meta.dart';

/// {@template organization_full}
/// Organization Full
/// Organization Full
/// {@endtemplate}
@immutable
class OrganizationFull {
  /// {@macro organization_full}
  OrganizationFull({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.url,
    required this.reposUrl,
    required this.eventsUrl,
    required this.hooksUrl,
    required this.issuesUrl,
    required this.membersUrl,
    required this.publicMembersUrl,
    required this.avatarUrl,
    required this.description,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.twitterUsername,
    this.isVerified,
    required this.hasOrganizationProjects,
    required this.hasRepositoryProjects,
    required this.publicRepos,
    required this.publicGists,
    required this.followers,
    required this.following,
    required this.htmlUrl,
    required this.type,
    this.totalPrivateRepos,
    this.ownedPrivateRepos,
    this.privateGists,
    this.diskUsage,
    this.collaborators,
    this.billingEmail,
    this.plan,
    this.defaultRepositoryPermission,
    this.defaultRepositoryBranch,
    this.membersCanCreateRepositories,
    this.twoFactorRequirementEnabled,
    this.membersAllowedRepositoryCreationType,
    this.membersCanCreatePublicRepositories,
    this.membersCanCreatePrivateRepositories,
    this.membersCanCreateInternalRepositories,
    this.membersCanCreatePages,
    this.membersCanCreatePublicPages,
    this.membersCanCreatePrivatePages,
    this.membersCanDeleteRepositories,
    this.membersCanChangeRepoVisibility,
    this.membersCanInviteOutsideCollaborators,
    this.membersCanDeleteIssues,
    this.displayCommenterFullNameSettingEnabled,
    this.readersCanCreateDiscussions,
    this.membersCanCreateTeams,
    this.membersCanViewDependencyInsights,
    this.membersCanForkPrivateRepositories,
    this.webCommitSignoffRequired,
    @deprecated this.advancedSecurityEnabledForNewRepositories,
    @deprecated this.dependabotAlertsEnabledForNewRepositories,
    @deprecated this.dependabotSecurityUpdatesEnabledForNewRepositories,
    @deprecated this.dependencyGraphEnabledForNewRepositories,
    @deprecated this.secretScanningEnabledForNewRepositories,
    @deprecated this.secretScanningPushProtectionEnabledForNewRepositories,
    this.secretScanningPushProtectionCustomLinkEnabled,
    this.secretScanningPushProtectionCustomLink,
    required this.createdAt,
    required this.updatedAt,
    required this.archivedAt,
    this.deployKeysEnabledForRepositories,
  });

  /// Converts a `Map<String, dynamic>` to an [OrganizationFull].
  factory OrganizationFull.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'OrganizationFull',
      json,
      () => OrganizationFull(
        login: json['login'] as String,
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        url: Uri.parse(json['url'] as String),
        reposUrl: Uri.parse(json['repos_url'] as String),
        eventsUrl: Uri.parse(json['events_url'] as String),
        hooksUrl: json['hooks_url'] as String,
        issuesUrl: json['issues_url'] as String,
        membersUrl: json['members_url'] as String,
        publicMembersUrl: json['public_members_url'] as String,
        avatarUrl: json['avatar_url'] as String,
        description: checkedKey(json, 'description') as String?,
        name: json['name'] as String?,
        company: json['company'] as String?,
        blog: maybeParseUri(json['blog'] as String?),
        location: json['location'] as String?,
        email: json['email'] as String?,
        twitterUsername: json['twitter_username'] as String?,
        isVerified: json['is_verified'] as bool?,
        hasOrganizationProjects: json['has_organization_projects'] as bool,
        hasRepositoryProjects: json['has_repository_projects'] as bool,
        publicRepos: (json['public_repos'] as int),
        publicGists: (json['public_gists'] as int),
        followers: (json['followers'] as int),
        following: (json['following'] as int),
        htmlUrl: Uri.parse(json['html_url'] as String),
        type: json['type'] as String,
        totalPrivateRepos: (json['total_private_repos'] as int?),
        ownedPrivateRepos: (json['owned_private_repos'] as int?),
        privateGists: (json['private_gists'] as int?),
        diskUsage: (json['disk_usage'] as int?),
        collaborators: (json['collaborators'] as int?),
        billingEmail: json['billing_email'] as String?,
        plan: OrganizationFullPlan.maybeFromJson(
          json['plan'] as Map<String, dynamic>?,
        ),
        defaultRepositoryPermission:
            json['default_repository_permission'] as String?,
        defaultRepositoryBranch: json['default_repository_branch'] as String?,
        membersCanCreateRepositories:
            json['members_can_create_repositories'] as bool?,
        twoFactorRequirementEnabled:
            json['two_factor_requirement_enabled'] as bool?,
        membersAllowedRepositoryCreationType:
            json['members_allowed_repository_creation_type'] as String?,
        membersCanCreatePublicRepositories:
            json['members_can_create_public_repositories'] as bool?,
        membersCanCreatePrivateRepositories:
            json['members_can_create_private_repositories'] as bool?,
        membersCanCreateInternalRepositories:
            json['members_can_create_internal_repositories'] as bool?,
        membersCanCreatePages: json['members_can_create_pages'] as bool?,
        membersCanCreatePublicPages:
            json['members_can_create_public_pages'] as bool?,
        membersCanCreatePrivatePages:
            json['members_can_create_private_pages'] as bool?,
        membersCanDeleteRepositories:
            json['members_can_delete_repositories'] as bool?,
        membersCanChangeRepoVisibility:
            json['members_can_change_repo_visibility'] as bool?,
        membersCanInviteOutsideCollaborators:
            json['members_can_invite_outside_collaborators'] as bool?,
        membersCanDeleteIssues: json['members_can_delete_issues'] as bool?,
        displayCommenterFullNameSettingEnabled:
            json['display_commenter_full_name_setting_enabled'] as bool?,
        readersCanCreateDiscussions:
            json['readers_can_create_discussions'] as bool?,
        membersCanCreateTeams: json['members_can_create_teams'] as bool?,
        membersCanViewDependencyInsights:
            json['members_can_view_dependency_insights'] as bool?,
        membersCanForkPrivateRepositories:
            json['members_can_fork_private_repositories'] as bool?,
        webCommitSignoffRequired: json['web_commit_signoff_required'] as bool?,
        advancedSecurityEnabledForNewRepositories:
            json['advanced_security_enabled_for_new_repositories'] as bool?,
        dependabotAlertsEnabledForNewRepositories:
            json['dependabot_alerts_enabled_for_new_repositories'] as bool?,
        dependabotSecurityUpdatesEnabledForNewRepositories:
            json['dependabot_security_updates_enabled_for_new_repositories']
                as bool?,
        dependencyGraphEnabledForNewRepositories:
            json['dependency_graph_enabled_for_new_repositories'] as bool?,
        secretScanningEnabledForNewRepositories:
            json['secret_scanning_enabled_for_new_repositories'] as bool?,
        secretScanningPushProtectionEnabledForNewRepositories:
            json['secret_scanning_push_protection_enabled_for_new_repositories']
                as bool?,
        secretScanningPushProtectionCustomLinkEnabled:
            json['secret_scanning_push_protection_custom_link_enabled']
                as bool?,
        secretScanningPushProtectionCustomLink:
            json['secret_scanning_push_protection_custom_link'] as String?,
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        archivedAt: maybeParseDateTime(
          checkedKey(json, 'archived_at') as String?,
        ),
        deployKeysEnabledForRepositories:
            json['deploy_keys_enabled_for_repositories'] as bool?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrganizationFull? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrganizationFull.fromJson(json);
  }

  /// example: `'github'`
  final String login;

  /// example: `1`
  final int id;

  /// example: `'MDEyOk9yZ2FuaXphdGlvbjE='`
  final String nodeId;

  /// example: `'https://api.github.com/orgs/github'`
  final Uri url;

  /// example: `'https://api.github.com/orgs/github/repos'`
  final Uri reposUrl;

  /// example: `'https://api.github.com/orgs/github/events'`
  final Uri eventsUrl;

  /// example: `'https://api.github.com/orgs/github/hooks'`
  final String hooksUrl;

  /// example: `'https://api.github.com/orgs/github/issues'`
  final String issuesUrl;

  /// example: `'https://api.github.com/orgs/github/members{/member}'`
  final String membersUrl;

  /// example: `'https://api.github.com/orgs/github/public_members{/member}'`
  final String publicMembersUrl;

  /// example: `'https://github.com/images/error/octocat_happy.gif'`
  final String avatarUrl;

  /// example: `'A great organization'`
  final String? description;

  /// example: `'github'`
  final String? name;

  /// example: `'GitHub'`
  final String? company;

  /// example: `'https://github.com/blog'`
  final Uri? blog;

  /// example: `'San Francisco'`
  final String? location;

  /// example: `'octocat@github.com'`
  final String? email;

  /// example: `'github'`
  final String? twitterUsername;

  /// example: `true`
  final bool? isVerified;

  /// example: `true`
  final bool hasOrganizationProjects;

  /// example: `true`
  final bool hasRepositoryProjects;

  /// example: `2`
  final int publicRepos;

  /// example: `1`
  final int publicGists;

  /// example: `20`
  final int followers;

  /// example: `0`
  final int following;

  /// example: `'https://github.com/octocat'`
  final Uri htmlUrl;

  /// example: `'Organization'`
  final String type;

  /// example: `100`
  final int? totalPrivateRepos;

  /// example: `100`
  final int? ownedPrivateRepos;

  /// example: `81`
  final int? privateGists;

  /// example: `10000`
  final int? diskUsage;

  /// The number of collaborators on private repositories.
  ///
  /// This field may be null if the number of private repositories is over
  /// 50,000.
  /// example: `8`
  final int? collaborators;

  /// example: `'org@example.com'`
  final String? billingEmail;
  final OrganizationFullPlan? plan;
  final String? defaultRepositoryPermission;

  /// The default branch for repositories created in this organization.
  /// example: `'main'`
  final String? defaultRepositoryBranch;

  /// example: `true`
  final bool? membersCanCreateRepositories;

  /// example: `true`
  final bool? twoFactorRequirementEnabled;

  /// example: `'all'`
  final String? membersAllowedRepositoryCreationType;

  /// example: `true`
  final bool? membersCanCreatePublicRepositories;

  /// example: `true`
  final bool? membersCanCreatePrivateRepositories;

  /// example: `true`
  final bool? membersCanCreateInternalRepositories;

  /// example: `true`
  final bool? membersCanCreatePages;

  /// example: `true`
  final bool? membersCanCreatePublicPages;

  /// example: `true`
  final bool? membersCanCreatePrivatePages;

  /// example: `true`
  final bool? membersCanDeleteRepositories;

  /// example: `true`
  final bool? membersCanChangeRepoVisibility;

  /// example: `true`
  final bool? membersCanInviteOutsideCollaborators;

  /// example: `true`
  final bool? membersCanDeleteIssues;

  /// example: `true`
  final bool? displayCommenterFullNameSettingEnabled;

  /// example: `true`
  final bool? readersCanCreateDiscussions;

  /// example: `true`
  final bool? membersCanCreateTeams;

  /// example: `true`
  final bool? membersCanViewDependencyInsights;

  /// example: `false`
  final bool? membersCanForkPrivateRepositories;

  /// example: `false`
  final bool? webCommitSignoffRequired;

  /// **Endpoint closing down notice.** Please use [code security
  /// configurations](https://docs.github.com/rest/code-security/configurations)
  /// instead.
  ///
  /// Whether GitHub Advanced Security is enabled for new repositories and
  /// repositories transferred to this organization.
  ///
  /// This field is only visible to organization owners or members of a team
  /// with the security manager role.
  /// example: `false`
  @deprecated
  final bool? advancedSecurityEnabledForNewRepositories;

  /// **Endpoint closing down notice.** Please use [code security
  /// configurations](https://docs.github.com/rest/code-security/configurations)
  /// instead.
  ///
  /// Whether Dependabot alerts are automatically enabled for new repositories
  /// and repositories transferred to this organization.
  ///
  /// This field is only visible to organization owners or members of a team
  /// with the security manager role.
  /// example: `false`
  @deprecated
  final bool? dependabotAlertsEnabledForNewRepositories;

  /// **Endpoint closing down notice.** Please use [code security
  /// configurations](https://docs.github.com/rest/code-security/configurations)
  /// instead.
  ///
  /// Whether Dependabot security updates are automatically enabled for new
  /// repositories and repositories transferred to this organization.
  ///
  /// This field is only visible to organization owners or members of a team
  /// with the security manager role.
  /// example: `false`
  @deprecated
  final bool? dependabotSecurityUpdatesEnabledForNewRepositories;

  /// **Endpoint closing down notice.** Please use [code security
  /// configurations](https://docs.github.com/rest/code-security/configurations)
  /// instead.
  ///
  /// Whether dependency graph is automatically enabled for new repositories
  /// and repositories transferred to this organization.
  ///
  /// This field is only visible to organization owners or members of a team
  /// with the security manager role.
  /// example: `false`
  @deprecated
  final bool? dependencyGraphEnabledForNewRepositories;

  /// **Endpoint closing down notice.** Please use [code security
  /// configurations](https://docs.github.com/rest/code-security/configurations)
  /// instead.
  ///
  /// Whether secret scanning is automatically enabled for new repositories
  /// and repositories transferred to this organization.
  ///
  /// This field is only visible to organization owners or members of a team
  /// with the security manager role.
  /// example: `false`
  @deprecated
  final bool? secretScanningEnabledForNewRepositories;

  /// **Endpoint closing down notice.** Please use [code security
  /// configurations](https://docs.github.com/rest/code-security/configurations)
  /// instead.
  ///
  /// Whether secret scanning push protection is automatically enabled for new
  /// repositories and repositories transferred to this organization.
  ///
  /// This field is only visible to organization owners or members of a team
  /// with the security manager role.
  /// example: `false`
  @deprecated
  final bool? secretScanningPushProtectionEnabledForNewRepositories;

  /// Whether a custom link is shown to contributors who are blocked from
  /// pushing a secret by push protection.
  /// example: `false`
  final bool? secretScanningPushProtectionCustomLinkEnabled;

  /// An optional URL string to display to contributors who are blocked from
  /// pushing a secret.
  /// example: `'https://github.com/test-org/test-repo/blob/main/README.md'`
  final String? secretScanningPushProtectionCustomLink;

  /// example: `'2008-01-14T04:33:35Z'`
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? archivedAt;

  /// Controls whether or not deploy keys may be added and used for
  /// repositories in the organization.
  /// example: `false`
  final bool? deployKeysEnabledForRepositories;

  /// Converts an [OrganizationFull] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'id': id,
      'node_id': nodeId,
      'url': url.toString(),
      'repos_url': reposUrl.toString(),
      'events_url': eventsUrl.toString(),
      'hooks_url': hooksUrl,
      'issues_url': issuesUrl,
      'members_url': membersUrl,
      'public_members_url': publicMembersUrl,
      'avatar_url': avatarUrl,
      'description': description,
      'name': name,
      'company': company,
      'blog': blog?.toString(),
      'location': location,
      'email': email,
      'twitter_username': twitterUsername,
      'is_verified': isVerified,
      'has_organization_projects': hasOrganizationProjects,
      'has_repository_projects': hasRepositoryProjects,
      'public_repos': publicRepos,
      'public_gists': publicGists,
      'followers': followers,
      'following': following,
      'html_url': htmlUrl.toString(),
      'type': type,
      'total_private_repos': totalPrivateRepos,
      'owned_private_repos': ownedPrivateRepos,
      'private_gists': privateGists,
      'disk_usage': diskUsage,
      'collaborators': collaborators,
      'billing_email': billingEmail,
      'plan': plan?.toJson(),
      'default_repository_permission': defaultRepositoryPermission,
      'default_repository_branch': defaultRepositoryBranch,
      'members_can_create_repositories': membersCanCreateRepositories,
      'two_factor_requirement_enabled': twoFactorRequirementEnabled,
      'members_allowed_repository_creation_type':
          membersAllowedRepositoryCreationType,
      'members_can_create_public_repositories':
          membersCanCreatePublicRepositories,
      'members_can_create_private_repositories':
          membersCanCreatePrivateRepositories,
      'members_can_create_internal_repositories':
          membersCanCreateInternalRepositories,
      'members_can_create_pages': membersCanCreatePages,
      'members_can_create_public_pages': membersCanCreatePublicPages,
      'members_can_create_private_pages': membersCanCreatePrivatePages,
      'members_can_delete_repositories': membersCanDeleteRepositories,
      'members_can_change_repo_visibility': membersCanChangeRepoVisibility,
      'members_can_invite_outside_collaborators':
          membersCanInviteOutsideCollaborators,
      'members_can_delete_issues': membersCanDeleteIssues,
      'display_commenter_full_name_setting_enabled':
          displayCommenterFullNameSettingEnabled,
      'readers_can_create_discussions': readersCanCreateDiscussions,
      'members_can_create_teams': membersCanCreateTeams,
      'members_can_view_dependency_insights': membersCanViewDependencyInsights,
      'members_can_fork_private_repositories':
          membersCanForkPrivateRepositories,
      'web_commit_signoff_required': webCommitSignoffRequired,
      'advanced_security_enabled_for_new_repositories':
          advancedSecurityEnabledForNewRepositories,
      'dependabot_alerts_enabled_for_new_repositories':
          dependabotAlertsEnabledForNewRepositories,
      'dependabot_security_updates_enabled_for_new_repositories':
          dependabotSecurityUpdatesEnabledForNewRepositories,
      'dependency_graph_enabled_for_new_repositories':
          dependencyGraphEnabledForNewRepositories,
      'secret_scanning_enabled_for_new_repositories':
          secretScanningEnabledForNewRepositories,
      'secret_scanning_push_protection_enabled_for_new_repositories':
          secretScanningPushProtectionEnabledForNewRepositories,
      'secret_scanning_push_protection_custom_link_enabled':
          secretScanningPushProtectionCustomLinkEnabled,
      'secret_scanning_push_protection_custom_link':
          secretScanningPushProtectionCustomLink,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'archived_at': archivedAt?.toIso8601String(),
      'deploy_keys_enabled_for_repositories': deployKeysEnabledForRepositories,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    login,
    id,
    nodeId,
    url,
    reposUrl,
    eventsUrl,
    hooksUrl,
    issuesUrl,
    membersUrl,
    publicMembersUrl,
    avatarUrl,
    description,
    name,
    company,
    blog,
    location,
    email,
    twitterUsername,
    isVerified,
    hasOrganizationProjects,
    hasRepositoryProjects,
    publicRepos,
    publicGists,
    followers,
    following,
    htmlUrl,
    type,
    totalPrivateRepos,
    ownedPrivateRepos,
    privateGists,
    diskUsage,
    collaborators,
    billingEmail,
    plan,
    defaultRepositoryPermission,
    defaultRepositoryBranch,
    membersCanCreateRepositories,
    twoFactorRequirementEnabled,
    membersAllowedRepositoryCreationType,
    membersCanCreatePublicRepositories,
    membersCanCreatePrivateRepositories,
    membersCanCreateInternalRepositories,
    membersCanCreatePages,
    membersCanCreatePublicPages,
    membersCanCreatePrivatePages,
    membersCanDeleteRepositories,
    membersCanChangeRepoVisibility,
    membersCanInviteOutsideCollaborators,
    membersCanDeleteIssues,
    displayCommenterFullNameSettingEnabled,
    readersCanCreateDiscussions,
    membersCanCreateTeams,
    membersCanViewDependencyInsights,
    membersCanForkPrivateRepositories,
    webCommitSignoffRequired,
    advancedSecurityEnabledForNewRepositories,
    dependabotAlertsEnabledForNewRepositories,
    dependabotSecurityUpdatesEnabledForNewRepositories,
    dependencyGraphEnabledForNewRepositories,
    secretScanningEnabledForNewRepositories,
    secretScanningPushProtectionEnabledForNewRepositories,
    secretScanningPushProtectionCustomLinkEnabled,
    secretScanningPushProtectionCustomLink,
    createdAt,
    updatedAt,
    archivedAt,
    deployKeysEnabledForRepositories,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrganizationFull &&
        this.login == other.login &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.url == other.url &&
        this.reposUrl == other.reposUrl &&
        this.eventsUrl == other.eventsUrl &&
        this.hooksUrl == other.hooksUrl &&
        this.issuesUrl == other.issuesUrl &&
        this.membersUrl == other.membersUrl &&
        this.publicMembersUrl == other.publicMembersUrl &&
        this.avatarUrl == other.avatarUrl &&
        this.description == other.description &&
        this.name == other.name &&
        this.company == other.company &&
        this.blog == other.blog &&
        this.location == other.location &&
        this.email == other.email &&
        this.twitterUsername == other.twitterUsername &&
        this.isVerified == other.isVerified &&
        this.hasOrganizationProjects == other.hasOrganizationProjects &&
        this.hasRepositoryProjects == other.hasRepositoryProjects &&
        this.publicRepos == other.publicRepos &&
        this.publicGists == other.publicGists &&
        this.followers == other.followers &&
        this.following == other.following &&
        this.htmlUrl == other.htmlUrl &&
        this.type == other.type &&
        this.totalPrivateRepos == other.totalPrivateRepos &&
        this.ownedPrivateRepos == other.ownedPrivateRepos &&
        this.privateGists == other.privateGists &&
        this.diskUsage == other.diskUsage &&
        this.collaborators == other.collaborators &&
        this.billingEmail == other.billingEmail &&
        this.plan == other.plan &&
        this.defaultRepositoryPermission == other.defaultRepositoryPermission &&
        this.defaultRepositoryBranch == other.defaultRepositoryBranch &&
        this.membersCanCreateRepositories ==
            other.membersCanCreateRepositories &&
        this.twoFactorRequirementEnabled == other.twoFactorRequirementEnabled &&
        this.membersAllowedRepositoryCreationType ==
            other.membersAllowedRepositoryCreationType &&
        this.membersCanCreatePublicRepositories ==
            other.membersCanCreatePublicRepositories &&
        this.membersCanCreatePrivateRepositories ==
            other.membersCanCreatePrivateRepositories &&
        this.membersCanCreateInternalRepositories ==
            other.membersCanCreateInternalRepositories &&
        this.membersCanCreatePages == other.membersCanCreatePages &&
        this.membersCanCreatePublicPages == other.membersCanCreatePublicPages &&
        this.membersCanCreatePrivatePages ==
            other.membersCanCreatePrivatePages &&
        this.membersCanDeleteRepositories ==
            other.membersCanDeleteRepositories &&
        this.membersCanChangeRepoVisibility ==
            other.membersCanChangeRepoVisibility &&
        this.membersCanInviteOutsideCollaborators ==
            other.membersCanInviteOutsideCollaborators &&
        this.membersCanDeleteIssues == other.membersCanDeleteIssues &&
        this.displayCommenterFullNameSettingEnabled ==
            other.displayCommenterFullNameSettingEnabled &&
        this.readersCanCreateDiscussions == other.readersCanCreateDiscussions &&
        this.membersCanCreateTeams == other.membersCanCreateTeams &&
        this.membersCanViewDependencyInsights ==
            other.membersCanViewDependencyInsights &&
        this.membersCanForkPrivateRepositories ==
            other.membersCanForkPrivateRepositories &&
        this.webCommitSignoffRequired == other.webCommitSignoffRequired &&
        this.advancedSecurityEnabledForNewRepositories ==
            other.advancedSecurityEnabledForNewRepositories &&
        this.dependabotAlertsEnabledForNewRepositories ==
            other.dependabotAlertsEnabledForNewRepositories &&
        this.dependabotSecurityUpdatesEnabledForNewRepositories ==
            other.dependabotSecurityUpdatesEnabledForNewRepositories &&
        this.dependencyGraphEnabledForNewRepositories ==
            other.dependencyGraphEnabledForNewRepositories &&
        this.secretScanningEnabledForNewRepositories ==
            other.secretScanningEnabledForNewRepositories &&
        this.secretScanningPushProtectionEnabledForNewRepositories ==
            other.secretScanningPushProtectionEnabledForNewRepositories &&
        this.secretScanningPushProtectionCustomLinkEnabled ==
            other.secretScanningPushProtectionCustomLinkEnabled &&
        this.secretScanningPushProtectionCustomLink ==
            other.secretScanningPushProtectionCustomLink &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.archivedAt == other.archivedAt &&
        this.deployKeysEnabledForRepositories ==
            other.deployKeysEnabledForRepositories;
  }
}
