// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_of_conduct_simple.dart';
import 'package:github_out/models/full_repository_merge_commit_message.dart';
import 'package:github_out/models/full_repository_merge_commit_title.dart';
import 'package:github_out/models/full_repository_permissions.dart';
import 'package:github_out/models/full_repository_squash_merge_commit_message.dart';
import 'package:github_out/models/full_repository_squash_merge_commit_title.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/repository.dart';
import 'package:github_out/models/security_and_analysis.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template full_repository}
/// Full Repository
/// Full Repository
/// {@endtemplate}
@immutable
class FullRepository {
  /// {@macro full_repository}
  const FullRepository({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.owner,
    required this.private,
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
    required this.hasIssues,
    required this.hasProjects,
    required this.hasWiki,
    required this.hasPages,
    required this.hasDiscussions,
    required this.archived,
    required this.disabled,
    required this.pushedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.subscribersCount,
    required this.networkCount,
    required this.license,
    required this.forks,
    required this.openIssues,
    required this.watchers,
    this.isTemplate,
    this.topics,
    this.hasDownloads,
    this.visibility,
    this.permissions,
    this.allowRebaseMerge,
    this.templateRepository,
    this.tempCloneToken,
    this.allowSquashMerge,
    this.allowAutoMerge,
    this.deleteBranchOnMerge,
    this.allowMergeCommit,
    this.allowUpdateBranch,
    this.useSquashPrTitleAsDefault,
    this.squashMergeCommitTitle,
    this.squashMergeCommitMessage,
    this.mergeCommitTitle,
    this.mergeCommitMessage,
    this.allowForking,
    this.webCommitSignoffRequired,
    this.organization,
    this.parent,
    this.source,
    this.masterBranch,
    this.anonymousAccessEnabled = true,
    this.codeOfConduct,
    this.securityAndAnalysis,
    this.customProperties,
  });

  /// Converts a `Map<String, dynamic>` to a [FullRepository].
  factory FullRepository.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'FullRepository',
      json,
      () => FullRepository(
        id: json['id'] as int,
        nodeId: json['node_id'] as String,
        name: json['name'] as String,
        fullName: json['full_name'] as String,
        owner: SimpleUser.fromJson(json['owner'] as Map<String, dynamic>),
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
        forksCount: json['forks_count'] as int,
        stargazersCount: json['stargazers_count'] as int,
        watchersCount: json['watchers_count'] as int,
        size: json['size'] as int,
        defaultBranch: json['default_branch'] as String,
        openIssuesCount: json['open_issues_count'] as int,
        isTemplate: json['is_template'] as bool?,
        topics: (json['topics'] as List?)?.cast<String>(),
        hasIssues: json['has_issues'] as bool,
        hasProjects: json['has_projects'] as bool,
        hasWiki: json['has_wiki'] as bool,
        hasPages: json['has_pages'] as bool,
        hasDownloads: json['has_downloads'] as bool?,
        hasDiscussions: json['has_discussions'] as bool,
        archived: json['archived'] as bool,
        disabled: json['disabled'] as bool,
        visibility: json['visibility'] as String?,
        pushedAt: DateTime.parse(json['pushed_at'] as String),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        permissions: FullRepositoryPermissions.maybeFromJson(
          json['permissions'] as Map<String, dynamic>?,
        ),
        allowRebaseMerge: json['allow_rebase_merge'] as bool?,
        templateRepository: Repository.maybeFromJson(
          json['template_repository'] as Map<String, dynamic>?,
        ),
        tempCloneToken: json['temp_clone_token'] as String?,
        allowSquashMerge: json['allow_squash_merge'] as bool?,
        allowAutoMerge: json['allow_auto_merge'] as bool?,
        deleteBranchOnMerge: json['delete_branch_on_merge'] as bool?,
        allowMergeCommit: json['allow_merge_commit'] as bool?,
        allowUpdateBranch: json['allow_update_branch'] as bool?,
        useSquashPrTitleAsDefault:
            json['use_squash_pr_title_as_default'] as bool?,
        squashMergeCommitTitle:
            FullRepositorySquashMergeCommitTitle.maybeFromJson(
              json['squash_merge_commit_title'] as String?,
            ),
        squashMergeCommitMessage:
            FullRepositorySquashMergeCommitMessage.maybeFromJson(
              json['squash_merge_commit_message'] as String?,
            ),
        mergeCommitTitle: FullRepositoryMergeCommitTitle.maybeFromJson(
          json['merge_commit_title'] as String?,
        ),
        mergeCommitMessage: FullRepositoryMergeCommitMessage.maybeFromJson(
          json['merge_commit_message'] as String?,
        ),
        allowForking: json['allow_forking'] as bool?,
        webCommitSignoffRequired: json['web_commit_signoff_required'] as bool?,
        subscribersCount: json['subscribers_count'] as int,
        networkCount: json['network_count'] as int,
        license: LicenseSimple.maybeFromJson(
          checkedKey(json, 'license') as Map<String, dynamic>?,
        ),
        organization: SimpleUser.maybeFromJson(
          json['organization'] as Map<String, dynamic>?,
        ),
        parent: Repository.maybeFromJson(
          json['parent'] as Map<String, dynamic>?,
        ),
        source: Repository.maybeFromJson(
          json['source'] as Map<String, dynamic>?,
        ),
        forks: json['forks'] as int,
        masterBranch: json['master_branch'] as String?,
        openIssues: json['open_issues'] as int,
        watchers: json['watchers'] as int,
        anonymousAccessEnabled:
            json['anonymous_access_enabled'] as bool? ?? true,
        codeOfConduct: CodeOfConductSimple.maybeFromJson(
          json['code_of_conduct'] as Map<String, dynamic>?,
        ),
        securityAndAnalysis: SecurityAndAnalysis.maybeFromJson(
          json['security_and_analysis'] as Map<String, dynamic>?,
        ),
        customProperties: (json['custom_properties'] as Map<String, dynamic>?)
            ?.map(MapEntry.new),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static FullRepository? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return FullRepository.fromJson(json);
  }

  /// example: `1296269`
  final int id;

  /// example: `'MDEwOlJlcG9zaXRvcnkxMjk2MjY5'`
  final String nodeId;

  /// example: `'Hello-World'`
  final String name;

  /// example: `'octocat/Hello-World'`
  final String fullName;

  /// Simple User
  /// A GitHub user.
  final SimpleUser owner;
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

  /// The size of the repository, in kilobytes. Size is calculated hourly.
  /// When a repository is initially created, the size is 0.
  /// example: `108`
  final int size;

  /// example: `'master'`
  final String defaultBranch;

  /// example: `0`
  final int openIssuesCount;

  /// example: `true`
  final bool? isTemplate;

  /// example: `'octocat'`
  /// example: `'atom'`
  /// example: `'electron'`
  /// example: `'API'`
  final List<String>? topics;

  /// example: `true`
  final bool hasIssues;

  /// example: `true`
  final bool hasProjects;

  /// example: `true`
  final bool hasWiki;
  final bool hasPages;

  /// example: `true`
  final bool? hasDownloads;

  /// example: `true`
  final bool hasDiscussions;
  final bool archived;

  /// Returns whether or not this repository disabled.
  final bool disabled;

  /// The repository visibility: public, private, or internal.
  /// example: `'public'`
  final String? visibility;

  /// example: `'2011-01-26T19:06:43Z'`
  final DateTime pushedAt;

  /// example: `'2011-01-26T19:01:12Z'`
  final DateTime createdAt;

  /// example: `'2011-01-26T19:14:43Z'`
  final DateTime updatedAt;
  final FullRepositoryPermissions? permissions;

  /// example: `true`
  final bool? allowRebaseMerge;

  /// Repository
  /// A repository on GitHub.
  final Repository? templateRepository;
  final String? tempCloneToken;

  /// example: `true`
  final bool? allowSquashMerge;

  /// example: `false`
  final bool? allowAutoMerge;

  /// example: `false`
  final bool? deleteBranchOnMerge;

  /// example: `true`
  final bool? allowMergeCommit;

  /// example: `true`
  final bool? allowUpdateBranch;

  /// example: `false`
  final bool? useSquashPrTitleAsDefault;

  /// The default value for a squash merge commit title:
  ///
  /// - `PR_TITLE` - default to the pull request's title.
  /// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one
  /// commit) or the pull request's title (when more than one commit).
  /// example: `'PR_TITLE'`
  final FullRepositorySquashMergeCommitTitle? squashMergeCommitTitle;

  /// The default value for a squash merge commit message:
  ///
  /// - `PR_BODY` - default to the pull request's body.
  /// - `COMMIT_MESSAGES` - default to the branch's commit messages.
  /// - `BLANK` - default to a blank commit message.
  /// example: `'PR_BODY'`
  final FullRepositorySquashMergeCommitMessage? squashMergeCommitMessage;

  /// The default value for a merge commit title.
  ///
  ///   - `PR_TITLE` - default to the pull request's title.
  /// - `MERGE_MESSAGE` - default to the classic title for a merge message
  /// (e.g., Merge pull request #123 from branch-name).
  /// example: `'PR_TITLE'`
  final FullRepositoryMergeCommitTitle? mergeCommitTitle;

  /// The default value for a merge commit message.
  ///
  /// - `PR_TITLE` - default to the pull request's title.
  /// - `PR_BODY` - default to the pull request's body.
  /// - `BLANK` - default to a blank commit message.
  /// example: `'PR_BODY'`
  final FullRepositoryMergeCommitMessage? mergeCommitMessage;

  /// example: `true`
  final bool? allowForking;

  /// example: `false`
  final bool? webCommitSignoffRequired;

  /// example: `42`
  final int subscribersCount;

  /// example: `0`
  final int networkCount;

  /// License Simple
  /// License Simple
  final LicenseSimple? license;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? organization;

  /// Repository
  /// A repository on GitHub.
  final Repository? parent;

  /// Repository
  /// A repository on GitHub.
  final Repository? source;
  final int forks;
  final String? masterBranch;
  final int openIssues;
  final int watchers;

  /// Whether anonymous git access is allowed.
  final bool? anonymousAccessEnabled;

  /// Code Of Conduct Simple
  /// Code of Conduct Simple
  final CodeOfConductSimple? codeOfConduct;
  final SecurityAndAnalysis? securityAndAnalysis;

  /// The custom properties that were defined for the repository. The keys are
  /// the custom property names, and the values are the corresponding custom
  /// property values.
  final Map<String, dynamic>? customProperties;

  /// Converts a [FullRepository] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'full_name': fullName,
      'owner': owner.toJson(),
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
      'has_discussions': hasDiscussions,
      'archived': archived,
      'disabled': disabled,
      'visibility': visibility,
      'pushed_at': pushedAt.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'permissions': permissions?.toJson(),
      'allow_rebase_merge': allowRebaseMerge,
      'template_repository': templateRepository?.toJson(),
      'temp_clone_token': tempCloneToken,
      'allow_squash_merge': allowSquashMerge,
      'allow_auto_merge': allowAutoMerge,
      'delete_branch_on_merge': deleteBranchOnMerge,
      'allow_merge_commit': allowMergeCommit,
      'allow_update_branch': allowUpdateBranch,
      'use_squash_pr_title_as_default': useSquashPrTitleAsDefault,
      'squash_merge_commit_title': squashMergeCommitTitle?.toJson(),
      'squash_merge_commit_message': squashMergeCommitMessage?.toJson(),
      'merge_commit_title': mergeCommitTitle?.toJson(),
      'merge_commit_message': mergeCommitMessage?.toJson(),
      'allow_forking': allowForking,
      'web_commit_signoff_required': webCommitSignoffRequired,
      'subscribers_count': subscribersCount,
      'network_count': networkCount,
      'license': license?.toJson(),
      'organization': organization?.toJson(),
      'parent': parent?.toJson(),
      'source': source?.toJson(),
      'forks': forks,
      'master_branch': masterBranch,
      'open_issues': openIssues,
      'watchers': watchers,
      'anonymous_access_enabled': anonymousAccessEnabled,
      'code_of_conduct': codeOfConduct?.toJson(),
      'security_and_analysis': securityAndAnalysis?.toJson(),
      'custom_properties': customProperties,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    name,
    fullName,
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
    hasDiscussions,
    archived,
    disabled,
    visibility,
    pushedAt,
    createdAt,
    updatedAt,
    permissions,
    allowRebaseMerge,
    templateRepository,
    tempCloneToken,
    allowSquashMerge,
    allowAutoMerge,
    deleteBranchOnMerge,
    allowMergeCommit,
    allowUpdateBranch,
    useSquashPrTitleAsDefault,
    squashMergeCommitTitle,
    squashMergeCommitMessage,
    mergeCommitTitle,
    mergeCommitMessage,
    allowForking,
    webCommitSignoffRequired,
    subscribersCount,
    networkCount,
    license,
    organization,
    parent,
    source,
    forks,
    masterBranch,
    openIssues,
    watchers,
    anonymousAccessEnabled,
    codeOfConduct,
    securityAndAnalysis,
    mapHash(customProperties),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FullRepository &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        fullName == other.fullName &&
        owner == other.owner &&
        private == other.private &&
        htmlUrl == other.htmlUrl &&
        description == other.description &&
        fork == other.fork &&
        url == other.url &&
        archiveUrl == other.archiveUrl &&
        assigneesUrl == other.assigneesUrl &&
        blobsUrl == other.blobsUrl &&
        branchesUrl == other.branchesUrl &&
        collaboratorsUrl == other.collaboratorsUrl &&
        commentsUrl == other.commentsUrl &&
        commitsUrl == other.commitsUrl &&
        compareUrl == other.compareUrl &&
        contentsUrl == other.contentsUrl &&
        contributorsUrl == other.contributorsUrl &&
        deploymentsUrl == other.deploymentsUrl &&
        downloadsUrl == other.downloadsUrl &&
        eventsUrl == other.eventsUrl &&
        forksUrl == other.forksUrl &&
        gitCommitsUrl == other.gitCommitsUrl &&
        gitRefsUrl == other.gitRefsUrl &&
        gitTagsUrl == other.gitTagsUrl &&
        gitUrl == other.gitUrl &&
        issueCommentUrl == other.issueCommentUrl &&
        issueEventsUrl == other.issueEventsUrl &&
        issuesUrl == other.issuesUrl &&
        keysUrl == other.keysUrl &&
        labelsUrl == other.labelsUrl &&
        languagesUrl == other.languagesUrl &&
        mergesUrl == other.mergesUrl &&
        milestonesUrl == other.milestonesUrl &&
        notificationsUrl == other.notificationsUrl &&
        pullsUrl == other.pullsUrl &&
        releasesUrl == other.releasesUrl &&
        sshUrl == other.sshUrl &&
        stargazersUrl == other.stargazersUrl &&
        statusesUrl == other.statusesUrl &&
        subscribersUrl == other.subscribersUrl &&
        subscriptionUrl == other.subscriptionUrl &&
        tagsUrl == other.tagsUrl &&
        teamsUrl == other.teamsUrl &&
        treesUrl == other.treesUrl &&
        cloneUrl == other.cloneUrl &&
        mirrorUrl == other.mirrorUrl &&
        hooksUrl == other.hooksUrl &&
        svnUrl == other.svnUrl &&
        homepage == other.homepage &&
        language == other.language &&
        forksCount == other.forksCount &&
        stargazersCount == other.stargazersCount &&
        watchersCount == other.watchersCount &&
        size == other.size &&
        defaultBranch == other.defaultBranch &&
        openIssuesCount == other.openIssuesCount &&
        isTemplate == other.isTemplate &&
        listsEqual(topics, other.topics) &&
        hasIssues == other.hasIssues &&
        hasProjects == other.hasProjects &&
        hasWiki == other.hasWiki &&
        hasPages == other.hasPages &&
        hasDownloads == other.hasDownloads &&
        hasDiscussions == other.hasDiscussions &&
        archived == other.archived &&
        disabled == other.disabled &&
        visibility == other.visibility &&
        pushedAt == other.pushedAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        permissions == other.permissions &&
        allowRebaseMerge == other.allowRebaseMerge &&
        templateRepository == other.templateRepository &&
        tempCloneToken == other.tempCloneToken &&
        allowSquashMerge == other.allowSquashMerge &&
        allowAutoMerge == other.allowAutoMerge &&
        deleteBranchOnMerge == other.deleteBranchOnMerge &&
        allowMergeCommit == other.allowMergeCommit &&
        allowUpdateBranch == other.allowUpdateBranch &&
        useSquashPrTitleAsDefault == other.useSquashPrTitleAsDefault &&
        squashMergeCommitTitle == other.squashMergeCommitTitle &&
        squashMergeCommitMessage == other.squashMergeCommitMessage &&
        mergeCommitTitle == other.mergeCommitTitle &&
        mergeCommitMessage == other.mergeCommitMessage &&
        allowForking == other.allowForking &&
        webCommitSignoffRequired == other.webCommitSignoffRequired &&
        subscribersCount == other.subscribersCount &&
        networkCount == other.networkCount &&
        license == other.license &&
        organization == other.organization &&
        parent == other.parent &&
        source == other.source &&
        forks == other.forks &&
        masterBranch == other.masterBranch &&
        openIssues == other.openIssues &&
        watchers == other.watchers &&
        anonymousAccessEnabled == other.anonymousAccessEnabled &&
        codeOfConduct == other.codeOfConduct &&
        securityAndAnalysis == other.securityAndAnalysis &&
        mapsEqual(customProperties, other.customProperties);
  }
}
