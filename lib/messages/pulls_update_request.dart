import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/pulls_update_request_state.dart';
import 'package:meta/meta.dart';

@immutable
class PullsUpdateRequest {
  PullsUpdateRequest({
    this.title,
    this.body,
    this.state,
    this.base,
    this.maintainerCanModify,
  });

  /// Converts a `Map<String, dynamic>` to a [PullsUpdateRequest].
  factory PullsUpdateRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'PullsUpdateRequest',
      json,
      () => PullsUpdateRequest(
        title: json['title'] as String?,
        body: json['body'] as String?,
        state: PullsUpdateRequestState.maybeFromJson(json['state'] as String?),
        base: json['base'] as String?,
        maintainerCanModify: json['maintainer_can_modify'] as bool?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullsUpdateRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return PullsUpdateRequest.fromJson(json);
  }

  /// The title of the pull request.
  final String? title;

  /// The contents of the pull request.
  final String? body;

  /// State of this Pull Request. Either `open` or `closed`.
  final PullsUpdateRequestState? state;

  /// The name of the branch you want your changes pulled into. This should be
  /// an existing branch on the current repository. You cannot update the base
  /// branch on a pull request to point to another repository.
  final String? base;

  /// Indicates whether [maintainers can
  /// modify](https://docs.github.com/articles/allowing-changes-to-a-pull-request-branch-created-from-a-fork/)
  /// the pull request.
  final bool? maintainerCanModify;

  /// Converts a [PullsUpdateRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
      'state': state?.toJson(),
      'base': base,
      'maintainer_can_modify': maintainerCanModify,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    title,
    body,
    state,
    base,
    maintainerCanModify,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PullsUpdateRequest &&
        this.title == other.title &&
        this.body == other.body &&
        this.state == other.state &&
        this.base == other.base &&
        this.maintainerCanModify == other.maintainerCanModify;
  }
}
