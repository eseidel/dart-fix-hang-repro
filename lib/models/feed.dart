import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/feed_links.dart';
import 'package:github_out/models/link_with_type.dart';
import 'package:meta/meta.dart';

/// {@template feed}
/// Feed
/// Feed
/// {@endtemplate}
@immutable
class Feed {
  /// {@macro feed}
  Feed({
    required this.timelineUrl,
    required this.userUrl,
    this.currentUserPublicUrl,
    this.currentUserUrl,
    this.currentUserActorUrl,
    this.currentUserOrganizationUrl,
    this.currentUserOrganizationUrls,
    this.securityAdvisoriesUrl,
    this.repositoryDiscussionsUrl,
    this.repositoryDiscussionsCategoryUrl,
    required this.links,
  });

  /// Converts a `Map<String, dynamic>` to a [Feed].
  factory Feed.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Feed',
      json,
      () => Feed(
        timelineUrl: json['timeline_url'] as String,
        userUrl: json['user_url'] as String,
        currentUserPublicUrl: json['current_user_public_url'] as String?,
        currentUserUrl: json['current_user_url'] as String?,
        currentUserActorUrl: json['current_user_actor_url'] as String?,
        currentUserOrganizationUrl:
            json['current_user_organization_url'] as String?,
        currentUserOrganizationUrls:
            (json['current_user_organization_urls'] as List?)?.cast<Uri>(),
        securityAdvisoriesUrl: json['security_advisories_url'] as String?,
        repositoryDiscussionsUrl: json['repository_discussions_url'] as String?,
        repositoryDiscussionsCategoryUrl:
            json['repository_discussions_category_url'] as String?,
        links: FeedLinks.fromJson(json['_links'] as Map<String, dynamic>),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Feed? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Feed.fromJson(json);
  }

  /// example: `'https://github.com/timeline'`
  final String timelineUrl;

  /// example: `'https://github.com/{user}'`
  final String userUrl;

  /// example: `'https://github.com/octocat'`
  final String? currentUserPublicUrl;

  /// example: `'https://github.com/octocat.private?token=abc123'`
  final String? currentUserUrl;

  /// example: `'https://github.com/octocat.private.actor?token=abc123'`
  final String? currentUserActorUrl;

  /// example: `'https://github.com/octocat-org'`
  final String? currentUserOrganizationUrl;

  /// example:
  /// `'https://github.com/organizations/github/octocat.private.atom?token=abc123'`
  final List<Uri>? currentUserOrganizationUrls;

  /// example: `'https://github.com/security-advisories'`
  final String? securityAdvisoriesUrl;

  /// A feed of discussions for a given repository.
  /// example: `'https://github.com/{user}/{repo}/discussions'`
  final String? repositoryDiscussionsUrl;

  /// A feed of discussions for a given repository and category.
  /// example:
  /// `'https://github.com/{user}/{repo}/discussions/categories/{category}'`
  final String? repositoryDiscussionsCategoryUrl;
  final FeedLinks links;

  /// Converts a [Feed] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'timeline_url': timelineUrl,
      'user_url': userUrl,
      'current_user_public_url': currentUserPublicUrl,
      'current_user_url': currentUserUrl,
      'current_user_actor_url': currentUserActorUrl,
      'current_user_organization_url': currentUserOrganizationUrl,
      'current_user_organization_urls': currentUserOrganizationUrls
          ?.map((e) => e.toString())
          .toList(),
      'security_advisories_url': securityAdvisoriesUrl,
      'repository_discussions_url': repositoryDiscussionsUrl,
      'repository_discussions_category_url': repositoryDiscussionsCategoryUrl,
      '_links': links.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    timelineUrl,
    userUrl,
    currentUserPublicUrl,
    currentUserUrl,
    currentUserActorUrl,
    currentUserOrganizationUrl,
    listHash(currentUserOrganizationUrls),
    securityAdvisoriesUrl,
    repositoryDiscussionsUrl,
    repositoryDiscussionsCategoryUrl,
    links,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Feed &&
        this.timelineUrl == other.timelineUrl &&
        this.userUrl == other.userUrl &&
        this.currentUserPublicUrl == other.currentUserPublicUrl &&
        this.currentUserUrl == other.currentUserUrl &&
        this.currentUserActorUrl == other.currentUserActorUrl &&
        this.currentUserOrganizationUrl == other.currentUserOrganizationUrl &&
        listsEqual(
          this.currentUserOrganizationUrls,
          other.currentUserOrganizationUrls,
        ) &&
        this.securityAdvisoriesUrl == other.securityAdvisoriesUrl &&
        this.repositoryDiscussionsUrl == other.repositoryDiscussionsUrl &&
        this.repositoryDiscussionsCategoryUrl ==
            other.repositoryDiscussionsCategoryUrl &&
        this.links == other.links;
  }
}
