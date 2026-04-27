import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/secret_scanning_location_commit.dart';
import 'package:github_out/models/secret_scanning_location_details.dart';
import 'package:github_out/models/secret_scanning_location_discussion_body.dart';
import 'package:github_out/models/secret_scanning_location_discussion_comment.dart';
import 'package:github_out/models/secret_scanning_location_discussion_title.dart';
import 'package:github_out/models/secret_scanning_location_issue_body.dart';
import 'package:github_out/models/secret_scanning_location_issue_comment.dart';
import 'package:github_out/models/secret_scanning_location_issue_title.dart';
import 'package:github_out/models/secret_scanning_location_pull_request_body.dart';
import 'package:github_out/models/secret_scanning_location_pull_request_comment.dart';
import 'package:github_out/models/secret_scanning_location_pull_request_review.dart';
import 'package:github_out/models/secret_scanning_location_pull_request_review_comment.dart';
import 'package:github_out/models/secret_scanning_location_pull_request_title.dart';
import 'package:github_out/models/secret_scanning_location_type.dart';
import 'package:github_out/models/secret_scanning_location_wiki_commit.dart';
import 'package:meta/meta.dart';

@immutable
class SecretScanningLocation {
  SecretScanningLocation({
    this.type,
    this.details,
  });

  /// Converts a `Map<String, dynamic>` to a [SecretScanningLocation].
  factory SecretScanningLocation.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'SecretScanningLocation',
      json,
      () => SecretScanningLocation(
        type: SecretScanningLocationType.maybeFromJson(json['type'] as String?),
        details: SecretScanningLocationDetails.maybeFromJson(
          json['details'] as Map<String, dynamic>,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecretScanningLocation? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return SecretScanningLocation.fromJson(json);
  }

  /// The location type. Because secrets may be found in different types of
  /// resources (ie. code, comments, issues, pull requests, discussions), this
  /// field identifies the type of resource where the secret was found.
  /// example: `'commit'`
  final SecretScanningLocationType? type;
  final SecretScanningLocationDetails? details;

  /// Converts a [SecretScanningLocation] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type?.toJson(),
      'details': details?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    type,
    details,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SecretScanningLocation &&
        this.type == other.type &&
        this.details == other.details;
  }
}
