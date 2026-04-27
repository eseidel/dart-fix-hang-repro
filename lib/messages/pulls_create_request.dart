import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class PullsCreateRequest {
  PullsCreateRequest({
    this.title,
    required this.head,
    this.headRepo,
    required this.base,
    this.body,
    this.maintainerCanModify,
    this.draft,
    this.issue,
  });

  /// Converts a `Map<String, dynamic>` to a [PullsCreateRequest].
  factory PullsCreateRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'PullsCreateRequest',
      json,
      () => PullsCreateRequest(
        title: json['title'] as String?,
        head: json['head'] as String,
        headRepo: json['head_repo'] as String?,
        base: json['base'] as String,
        body: json['body'] as String?,
        maintainerCanModify: json['maintainer_can_modify'] as bool?,
        draft: json['draft'] as bool?,
        issue: (json['issue'] as int?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullsCreateRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return PullsCreateRequest.fromJson(json);
  }

  /// The title of the new pull request. Required unless `issue` is specified.
  final String? title;

  /// The name of the branch where your changes are implemented. For
  /// cross-repository pull requests in the same network, namespace `head`
  /// with a user like this: `username:branch`.
  final String head;

  /// The name of the repository where the changes in the pull request were
  /// made. This field is required for cross-repository pull requests if both
  /// repositories are owned by the same organization.
  /// example: `'octo-org/octo-repo'`
  final String? headRepo;

  /// The name of the branch you want the changes pulled into. This should be
  /// an existing branch on the current repository. You cannot submit a pull
  /// request to one repository that requests a merge to a base of another
  /// repository.
  final String base;

  /// The contents of the pull request.
  final String? body;

  /// Indicates whether [maintainers can
  /// modify](https://docs.github.com/articles/allowing-changes-to-a-pull-request-branch-created-from-a-fork/)
  /// the pull request.
  final bool? maintainerCanModify;

  /// Indicates whether the pull request is a draft. See "[Draft Pull
  /// Requests](https://docs.github.com/articles/about-pull-requests#draft-pull-requests)"
  /// in the GitHub Help documentation to learn more.
  final bool? draft;

  /// An issue in the repository to convert to a pull request. The issue
  /// title, body, and comments will become the title, body, and comments on
  /// the new pull request. Required unless `title` is specified.
  /// example: `1`
  final int? issue;

  /// Converts a [PullsCreateRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'head': head,
      'head_repo': headRepo,
      'base': base,
      'body': body,
      'maintainer_can_modify': maintainerCanModify,
      'draft': draft,
      'issue': issue,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    title,
    head,
    headRepo,
    base,
    body,
    maintainerCanModify,
    draft,
    issue,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PullsCreateRequest &&
        this.title == other.title &&
        this.head == other.head &&
        this.headRepo == other.headRepo &&
        this.base == other.base &&
        this.body == other.body &&
        this.maintainerCanModify == other.maintainerCanModify &&
        this.draft == other.draft &&
        this.issue == other.issue;
  }
}
