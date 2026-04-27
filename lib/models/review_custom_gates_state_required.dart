import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/review_custom_gates_state_required_state.dart';
import 'package:meta/meta.dart';

@immutable
class ReviewCustomGatesStateRequired {
  ReviewCustomGatesStateRequired({
    required this.environmentName,
    required this.state,
    this.comment,
  });

  /// Converts a `Map<String, dynamic>` to a [ReviewCustomGatesStateRequired].
  factory ReviewCustomGatesStateRequired.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ReviewCustomGatesStateRequired',
      json,
      () => ReviewCustomGatesStateRequired(
        environmentName: json['environment_name'] as String,
        state: ReviewCustomGatesStateRequiredState.fromJson(
          json['state'] as String,
        ),
        comment: json['comment'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReviewCustomGatesStateRequired? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReviewCustomGatesStateRequired.fromJson(json);
  }

  /// The name of the environment to approve or reject.
  final String environmentName;

  /// Whether to approve or reject deployment to the specified environments.
  final ReviewCustomGatesStateRequiredState state;

  /// Optional comment to include with the review.
  final String? comment;

  /// Converts a [ReviewCustomGatesStateRequired] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'environment_name': environmentName,
      'state': state.toJson(),
      'comment': comment,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    environmentName,
    state,
    comment,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReviewCustomGatesStateRequired &&
        this.environmentName == other.environmentName &&
        this.state == other.state &&
        this.comment == other.comment;
  }
}
