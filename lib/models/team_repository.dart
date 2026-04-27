import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team_repository_permissions.dart';
import 'package:meta/meta.dart';

/// {@template team_repository}
/// Team Repository
/// A team's access to a repository.
/// {@endtemplate}
@immutable
class TeamRepository {
  /// {@macro team_repository}
  TeamRepository({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.license,
    required this.forks,
    this.permissions,
    this.roleName,
    required this.owner,
    this.private = false,
    required this.htmlUrl,
    required this.description,
    required this.fork,
    required this.url,
    required this.archiveUrl,
    required this.assigneesUrl,
    required this.blobsUrl,
    required this.branchesUrl,
    required this.collaboratorsUrl,
    required this.commentsUrl,
    required this.commitsUrl,
    required this.compareUrl,
    required this.contentsUrl,
    required this.contributorsUrl,
    required this.deploymentsUrl,
    required this.downloadsUrl,
    required this.eventsUrl,
    required this.forksUrl,
    required this.gitCommitsUrl,
    required this.gitRefsUrl,
    required this.gitTagsUrl,
    required this.gitUrl,
    required this.issueCommentUrl,
    required this.issueEventsUrl,
    required this.issuesUrl,
    required this.keysUrl,
    required this.labelsUrl,
    required this.languagesUrl,
    required this.mergesUrl,
    required this.milestonesUrl,
    required this.notificationsUrl,
    required this.pullsUrl,
    required this.releasesUrl,
    required this.sshUrl,
    required this.stargazersUrl,
    required this.statusesUrl,
    required this.subscribersUrl,
    required this.subscriptionUrl,
    required this.tagsUrl,
    required this.teamsUrl,
    required this.treesUrl,
    required this.cloneUrl,
    required this.mirrorUrl,
    required this.hooksUrl,
    required this.svnUrl,
    required this.homepage,
    required this.language,
    required this.forksCount,
    required this.stargazersCount,
    required this.watchersCount,
    required this.size,
    required this.defaultBranch,
    required this.openIssuesCount,
    this.isTemplate = false,
    this.topics,
    this.hasIssues = true,
    this.hasProjects = true,
    this.hasWiki = true,
    required this.hasPages,
    this.hasDownloads = true,
    this.archived = false,
    required this.disabled,
    this.visibility = 'public',
    required this.pushedAt,
    required this.createdAt,
    required this.updatedAt,
    this.allowRebaseMerge = true,
    this.tempCloneToken,
    this.allowSquashMerge = true,
    this.allowAutoMerge = false,
    this.deleteBranchOnMerge = false,
    this.allowMergeCommit = true,
    this.allowForking = false,
    this.webCommitSignoffRequired = false,
    this.subscribersCount,
    this.networkCount,
    required this.openIssues,
    required this.watchers,
    this.masterBranch,
  });

  /// Converts a `Map<String, dynamic>` to a [TeamRepository].
  factory TeamRepository.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'TeamRepository',
      json,
      () => TeamRepository(
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        name: json['name'] as String,
        fullName: json['full_name'] as String,
        license: LicenseSimple.maybeFromJson(
          checkedKey(json, 'license') as Map<String, dynamic>?,
        ),
        forks: (json['forks'] as int),
        permissions: TeamRepositoryPermissions.maybeFromJson(
          json['permissions'] as Map<String, dynamic>?,
        ),
        roleName: json['role_name'] as String?,
        owner: SimpleUser.maybeFromJson(
          checkedKey(json, 'owner') as Map<String, dynamic>?,
        ),
        private: json['private'] as bool,
        htmlUrl: Uri.parse(json['html_url'] as String),
        description: checkedKey(json, 'description') as String?,
        fork: json['fork'] as bool,
        url: Uri.parse(json['url'] as String),
        archiveUrl: json['archive_url'] as String,
        assigneesUrl: json['assignees_url'] as String,
        blobsUrl: json['blobs_url'] as String,
        branchesUrl: json['branches_url'] as String,
        collaboratorsUrl: json['collaborators_url'] as String,
        commentsUrl: json['comments_url'] as String,
        commitsUrl: json['commits_url'] as String,
        compareUrl: json['compare_url'] as String,
        contentsUrl: json['contents_url'] as String,
        contributorsUrl: Uri.parse(json['contributors_url'] as String),
        deploymentsUrl: Uri.parse(json['deployments_url'] as String),
        downloadsUrl: Uri.parse(json['downloads_url'] as String),
        eventsUrl: Uri.parse(json['events_url'] as String),
        forksUrl: Uri.parse(json['forks_url'] as String),
        gitCommitsUrl: json['git_commits_url'] as String,
        gitRefsUrl: json['git_refs_url'] as String,
        gitTagsUrl: json['git_tags_url'] as String,
        gitUrl: json['git_url'] as String,
        issueCommentUrl: json['issue_comment_url'] as String,
        issueEventsUrl: json['issue_events_url'] as String,
        issuesUrl: json['issues_url'] as String,
        keysUrl: json['keys_url'] as String,
        labelsUrl: json['labels_url'] as String,
        languagesUrl: Uri.parse(json['languages_url'] as String),
        mergesUrl: Uri.parse(json['merges_url'] as String),
        milestonesUrl: json['milestones_url'] as String,
        notificationsUrl: json['notifications_url'] as String,
        pullsUrl: json['pulls_url'] as String,
        releasesUrl: json['releases_url'] as String,
        sshUrl: json['ssh_url'] as String,
        stargazersUrl: Uri.parse(json['stargazers_url'] as String),
        statusesUrl: json['statuses_url'] as String,
        subscribersUrl: Uri.parse(json['subscribers_url'] as String),
        subscriptionUrl: Uri.parse(json['subscription_url'] as String),
        tagsUrl: Uri.parse(json['tags_url'] as String),
        teamsUrl: Uri.parse(json['teams_url'] as String),
        treesUrl: json['trees_url'] as String,
        cloneUrl: json['clone_url'] as String,
        mirrorUrl: maybeParseUri(checkedKey(json, 'mirror_url') as String?),
        hooksUrl: Uri.parse(json['hooks_url'] as String),
        svnUrl: Uri.parse(json['svn_url'] as String),
        homepage: maybeParseUri(checkedKey(json, 'homepage') as String?),
        language: checkedKey(json, 'language') as String?,
        forksCount: (json['forks_count'] as int),
        stargazersCount: (json['stargazers_count'] as int),
        watchersCount: (json['watchers_count'] as int),
        size: (json['size'] as int),
        defaultBranch: json['default_branch'] as String,
        openIssuesCount: (json['open_issues_count'] as int),
        isTemplate: json['is_template'] as bool? ?? false,
        topics: (json['topics'] as List?)?.cast<String>(),
        hasIssues: json['has_issues'] as bool,
        hasProjects: json['has_projects'] as bool,
        hasWiki: json['has_wiki'] as bool,
        hasPages: json['has_pages'] as bool,
        hasDownloads: json['has_downloads'] as bool,
        archived: json['archived'] as bool,
        disabled: json['disabled'] as bool,
        visibility: json['visibility'] as String? ?? 'public',
        pushedAt: maybeParseDateTime(checkedKey(json, 'pushed_at') as String?),
        createdAt: maybeParseDateTime(
          checkedKey(json, 'created_at') as String?,
        ),
        updatedAt: maybeParseDateTime(
          checkedKey(json, 'updated_at') as String?,
        ),
        allowRebaseMerge: json['allow_rebase_merge'] as bool? ?? true,
        tempCloneToken: json['temp_clone_token'] as String?,
        allowSquashMerge: json['allow_squash_merge'] as bool? ?? true,
        allowAutoMerge: json['allow_auto_merge'] as bool? ?? false,
        deleteBranchOnMerge: json['delete_branch_on_merge'] as bool? ?? false,
        allowMergeCommit: json['allow_merge_commit'] as bool? ?? true,
        allowForking: json['allow_forking'] as bool? ?? false,
        webCommitSignoffRequired:
            json['web_commit_signoff_required'] as bool? ?? false,
        subscribersCount: (json['subscribers_count'] as int?),
        networkCount: (json['network_count'] as int?),
        openIssues: (json['open_issues'] as int),
        watchers: (json['watchers'] as int),
        masterBranch: json['master_branch'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamRepository? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return TeamRepository.fromJson(json);
  }

  /// Unique identifier of the repository
  /// example: `42`
  final int id;

  /// example: `'MDEwOlJlcG9zaXRvcnkxMjk2MjY5'`
  final String nodeId;

  /// The name of the repository.
  /// example: `'Team Environment'`
  final String name;

  /// example: `'octocat/Hello-World'`
  final String fullName;

  /// License Simple
  /// License Simple
  final LicenseSimple? license;
  final int forks;
  final TeamRepositoryPermissions? permissions;

  /// example: `'admin'`
  final String? roleName;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? owner;

  /// Whether the repository is private or public.
  final bool private;

  /// example: `'https://github.com/octocat/Hello-World'`
  final Uri htmlUrl;

  /// example: `'This your first repo!'`
  final String? description;
  final bool fork;

  /// example: `'https://api.github.com/repos/octocat/Hello-World'`
  final Uri url;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/{archive_format}{/ref}'`
  final String archiveUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/assignees{/user}'`
  final String assigneesUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/git/blobs{/sha}'`
  final String blobsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/branches{/branch}'`
  final String branchesUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/collaborators{/collaborator}'`
  final String collaboratorsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/comments{/number}'`
  final String commentsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/commits{/sha}'`
  final String commitsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/compare/{base}...{head}'`
  final String compareUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/contents/{+path}'`
  final String contentsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/contributors'`
  final Uri contributorsUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/deployments'`
  final Uri deploymentsUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/downloads'`
  final Uri downloadsUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/events'`
  final Uri eventsUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/forks'`
  final Uri forksUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/git/commits{/sha}'`
  final String gitCommitsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/git/refs{/sha}'`
  final String gitRefsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/git/tags{/sha}'`
  final String gitTagsUrl;

  /// example: `'git:github.com/octocat/Hello-World.git'`
  final String gitUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/issues/comments{/number}'`
  final String issueCommentUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/issues/events{/number}'`
  final String issueEventsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/issues{/number}'`
  final String issuesUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/keys{/key_id}'`
  final String keysUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/labels{/name}'`
  final String labelsUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/languages'`
  final Uri languagesUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/merges'`
  final Uri mergesUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/milestones{/number}'`
  final String milestonesUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/notifications{?since,all,participating}'`
  final String notificationsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/pulls{/number}'`
  final String pullsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/releases{/id}'`
  final String releasesUrl;

  /// example: `'git@github.com:octocat/Hello-World.git'`
  final String sshUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/stargazers'`
  final Uri stargazersUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/statuses/{sha}'`
  final String statusesUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/subscribers'`
  final Uri subscribersUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/subscription'`
  final Uri subscriptionUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/tags'`
  final Uri tagsUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/teams'`
  final Uri teamsUrl;

  /// example:
  /// `'http://api.github.com/repos/octocat/Hello-World/git/trees{/sha}'`
  final String treesUrl;

  /// example: `'https://github.com/octocat/Hello-World.git'`
  final String cloneUrl;

  /// example: `'git:git.example.com/octocat/Hello-World'`
  final Uri? mirrorUrl;

  /// example: `'http://api.github.com/repos/octocat/Hello-World/hooks'`
  final Uri hooksUrl;

  /// example: `'https://svn.github.com/octocat/Hello-World'`
  final Uri svnUrl;

  /// example: `'https://github.com'`
  final Uri? homepage;
  final String? language;

  /// example: `9`
  final int forksCount;

  /// example: `80`
  final int stargazersCount;

  /// example: `80`
  final int watchersCount;

  /// example: `108`
  final int size;

  /// The default branch of the repository.
  /// example: `'master'`
  final String defaultBranch;

  /// example: `0`
  final int openIssuesCount;

  /// Whether this repository acts as a template that can be used to generate
  /// new repositories.
  /// example: `true`
  final bool? isTemplate;
  final List<String>? topics;

  /// Whether issues are enabled.
  /// example: `true`
  final bool hasIssues;

  /// Whether projects are enabled.
  /// example: `true`
  final bool hasProjects;

  /// Whether the wiki is enabled.
  /// example: `true`
  final bool hasWiki;
  final bool hasPages;

  /// Whether downloads are enabled.
  /// example: `true`
  final bool hasDownloads;

  /// Whether the repository is archived.
  final bool archived;

  /// Returns whether or not this repository disabled.
  final bool disabled;

  /// The repository visibility: public, private, or internal.
  final String? visibility;

  /// example: `'2011-01-26T19:06:43Z'`
  final DateTime? pushedAt;

  /// example: `'2011-01-26T19:01:12Z'`
  final DateTime? createdAt;

  /// example: `'2011-01-26T19:14:43Z'`
  final DateTime? updatedAt;

  /// Whether to allow rebase merges for pull requests.
  /// example: `true`
  final bool? allowRebaseMerge;
  final String? tempCloneToken;

  /// Whether to allow squash merges for pull requests.
  /// example: `true`
  final bool? allowSquashMerge;

  /// Whether to allow Auto-merge to be used on pull requests.
  /// example: `false`
  final bool? allowAutoMerge;

  /// Whether to delete head branches when pull requests are merged
  /// example: `false`
  final bool? deleteBranchOnMerge;

  /// Whether to allow merge commits for pull requests.
  /// example: `true`
  final bool? allowMergeCommit;

  /// Whether to allow forking this repo
  /// example: `false`
  final bool? allowForking;

  /// Whether to require contributors to sign off on web-based commits
  /// example: `false`
  final bool? webCommitSignoffRequired;
  final int? subscribersCount;
  final int? networkCount;
  final int openIssues;
  final int watchers;
  final String? masterBranch;

  /// Converts a [TeamRepository] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'full_name': fullName,
      'license': license?.toJson(),
      'forks': forks,
      'permissions': permissions?.toJson(),
      'role_name': roleName,
      'owner': owner?.toJson(),
      'private': private,
      'html_url': htmlUrl.toString(),
      'description': description,
      'fork': fork,
      'url': url.toString(),
      'archive_url': archiveUrl,
      'assignees_url': assigneesUrl,
      'blobs_url': blobsUrl,
      'branches_url': branchesUrl,
      'collaborators_url': collaboratorsUrl,
      'comments_url': commentsUrl,
      'commits_url': commitsUrl,
      'compare_url': compareUrl,
      'contents_url': contentsUrl,
      'contributors_url': contributorsUrl.toString(),
      'deployments_url': deploymentsUrl.toString(),
      'downloads_url': downloadsUrl.toString(),
      'events_url': eventsUrl.toString(),
      'forks_url': forksUrl.toString(),
      'git_commits_url': gitCommitsUrl,
      'git_refs_url': gitRefsUrl,
      'git_tags_url': gitTagsUrl,
      'git_url': gitUrl,
      'issue_comment_url': issueCommentUrl,
      'issue_events_url': issueEventsUrl,
      'issues_url': issuesUrl,
      'keys_url': keysUrl,
      'labels_url': labelsUrl,
      'languages_url': languagesUrl.toString(),
      'merges_url': mergesUrl.toString(),
      'milestones_url': milestonesUrl,
      'notifications_url': notificationsUrl,
      'pulls_url': pullsUrl,
      'releases_url': releasesUrl,
      'ssh_url': sshUrl,
      'stargazers_url': stargazersUrl.toString(),
      'statuses_url': statusesUrl,
      'subscribers_url': subscribersUrl.toString(),
      'subscription_url': subscriptionUrl.toString(),
      'tags_url': tagsUrl.toString(),
      'teams_url': teamsUrl.toString(),
      'trees_url': treesUrl,
      'clone_url': cloneUrl,
      'mirror_url': mirrorUrl?.toString(),
      'hooks_url': hooksUrl.toString(),
      'svn_url': svnUrl.toString(),
      'homepage': homepage?.toString(),
      'language': language,
      'forks_count': forksCount,
      'stargazers_count': stargazersCount,
      'watchers_count': watchersCount,
      'size': size,
      'default_branch': defaultBranch,
      'open_issues_count': openIssuesCount,
      'is_template': isTemplate,
      'topics': topics,
      'has_issues': hasIssues,
      'has_projects': hasProjects,
      'has_wiki': hasWiki,
      'has_pages': hasPages,
      'has_downloads': hasDownloads,
      'archived': archived,
      'disabled': disabled,
      'visibility': visibility,
      'pushed_at': pushedAt?.toIso8601String(),
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'allow_rebase_merge': allowRebaseMerge,
      'temp_clone_token': tempCloneToken,
      'allow_squash_merge': allowSquashMerge,
      'allow_auto_merge': allowAutoMerge,
      'delete_branch_on_merge': deleteBranchOnMerge,
      'allow_merge_commit': allowMergeCommit,
      'allow_forking': allowForking,
      'web_commit_signoff_required': webCommitSignoffRequired,
      'subscribers_count': subscribersCount,
      'network_count': networkCount,
      'open_issues': openIssues,
      'watchers': watchers,
      'master_branch': masterBranch,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    name,
    fullName,
    license,
    forks,
    permissions,
    roleName,
    owner,
    private,
    htmlUrl,
    description,
    fork,
    url,
    archiveUrl,
    assigneesUrl,
    blobsUrl,
    branchesUrl,
    collaboratorsUrl,
    commentsUrl,
    commitsUrl,
    compareUrl,
    contentsUrl,
    contributorsUrl,
    deploymentsUrl,
    downloadsUrl,
    eventsUrl,
    forksUrl,
    gitCommitsUrl,
    gitRefsUrl,
    gitTagsUrl,
    gitUrl,
    issueCommentUrl,
    issueEventsUrl,
    issuesUrl,
    keysUrl,
    labelsUrl,
    languagesUrl,
    mergesUrl,
    milestonesUrl,
    notificationsUrl,
    pullsUrl,
    releasesUrl,
    sshUrl,
    stargazersUrl,
    statusesUrl,
    subscribersUrl,
    subscriptionUrl,
    tagsUrl,
    teamsUrl,
    treesUrl,
    cloneUrl,
    mirrorUrl,
    hooksUrl,
    svnUrl,
    homepage,
    language,
    forksCount,
    stargazersCount,
    watchersCount,
    size,
    defaultBranch,
    openIssuesCount,
    isTemplate,
    listHash(topics),
    hasIssues,
    hasProjects,
    hasWiki,
    hasPages,
    hasDownloads,
    archived,
    disabled,
    visibility,
    pushedAt,
    createdAt,
    updatedAt,
    allowRebaseMerge,
    tempCloneToken,
    allowSquashMerge,
    allowAutoMerge,
    deleteBranchOnMerge,
    allowMergeCommit,
    allowForking,
    webCommitSignoffRequired,
    subscribersCount,
    networkCount,
    openIssues,
    watchers,
    masterBranch,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TeamRepository &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.name == other.name &&
        this.fullName == other.fullName &&
        this.license == other.license &&
        this.forks == other.forks &&
        this.permissions == other.permissions &&
        this.roleName == other.roleName &&
        this.owner == other.owner &&
        this.private == other.private &&
        this.htmlUrl == other.htmlUrl &&
        this.description == other.description &&
        this.fork == other.fork &&
        this.url == other.url &&
        this.archiveUrl == other.archiveUrl &&
        this.assigneesUrl == other.assigneesUrl &&
        this.blobsUrl == other.blobsUrl &&
        this.branchesUrl == other.branchesUrl &&
        this.collaboratorsUrl == other.collaboratorsUrl &&
        this.commentsUrl == other.commentsUrl &&
        this.commitsUrl == other.commitsUrl &&
        this.compareUrl == other.compareUrl &&
        this.contentsUrl == other.contentsUrl &&
        this.contributorsUrl == other.contributorsUrl &&
        this.deploymentsUrl == other.deploymentsUrl &&
        this.downloadsUrl == other.downloadsUrl &&
        this.eventsUrl == other.eventsUrl &&
        this.forksUrl == other.forksUrl &&
        this.gitCommitsUrl == other.gitCommitsUrl &&
        this.gitRefsUrl == other.gitRefsUrl &&
        this.gitTagsUrl == other.gitTagsUrl &&
        this.gitUrl == other.gitUrl &&
        this.issueCommentUrl == other.issueCommentUrl &&
        this.issueEventsUrl == other.issueEventsUrl &&
        this.issuesUrl == other.issuesUrl &&
        this.keysUrl == other.keysUrl &&
        this.labelsUrl == other.labelsUrl &&
        this.languagesUrl == other.languagesUrl &&
        this.mergesUrl == other.mergesUrl &&
        this.milestonesUrl == other.milestonesUrl &&
        this.notificationsUrl == other.notificationsUrl &&
        this.pullsUrl == other.pullsUrl &&
        this.releasesUrl == other.releasesUrl &&
        this.sshUrl == other.sshUrl &&
        this.stargazersUrl == other.stargazersUrl &&
        this.statusesUrl == other.statusesUrl &&
        this.subscribersUrl == other.subscribersUrl &&
        this.subscriptionUrl == other.subscriptionUrl &&
        this.tagsUrl == other.tagsUrl &&
        this.teamsUrl == other.teamsUrl &&
        this.treesUrl == other.treesUrl &&
        this.cloneUrl == other.cloneUrl &&
        this.mirrorUrl == other.mirrorUrl &&
        this.hooksUrl == other.hooksUrl &&
        this.svnUrl == other.svnUrl &&
        this.homepage == other.homepage &&
        this.language == other.language &&
        this.forksCount == other.forksCount &&
        this.stargazersCount == other.stargazersCount &&
        this.watchersCount == other.watchersCount &&
        this.size == other.size &&
        this.defaultBranch == other.defaultBranch &&
        this.openIssuesCount == other.openIssuesCount &&
        this.isTemplate == other.isTemplate &&
        listsEqual(this.topics, other.topics) &&
        this.hasIssues == other.hasIssues &&
        this.hasProjects == other.hasProjects &&
        this.hasWiki == other.hasWiki &&
        this.hasPages == other.hasPages &&
        this.hasDownloads == other.hasDownloads &&
        this.archived == other.archived &&
        this.disabled == other.disabled &&
        this.visibility == other.visibility &&
        this.pushedAt == other.pushedAt &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.allowRebaseMerge == other.allowRebaseMerge &&
        this.tempCloneToken == other.tempCloneToken &&
        this.allowSquashMerge == other.allowSquashMerge &&
        this.allowAutoMerge == other.allowAutoMerge &&
        this.deleteBranchOnMerge == other.deleteBranchOnMerge &&
        this.allowMergeCommit == other.allowMergeCommit &&
        this.allowForking == other.allowForking &&
        this.webCommitSignoffRequired == other.webCommitSignoffRequired &&
        this.subscribersCount == other.subscribersCount &&
        this.networkCount == other.networkCount &&
        this.openIssues == other.openIssues &&
        this.watchers == other.watchers &&
        this.masterBranch == other.masterBranch;
  }
}
