// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/secret_scanning_alert_resolution.dart';
import 'package:github_out/models/secret_scanning_alert_resolution_comment.dart';
import 'package:github_out/models/secret_scanning_alert_state.dart';
import 'package:meta/meta.dart';

@immutable
class SecretScanningUpdateAlertRequest {
  const SecretScanningUpdateAlertRequest({
    required this.state,
    this.resolution,
    this.resolutionComment,
  });

  /// Converts a `Map<String, dynamic>` to a [SecretScanningUpdateAlertRequest].
  factory SecretScanningUpdateAlertRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'SecretScanningUpdateAlertRequest',
      json,
      () => SecretScanningUpdateAlertRequest(
        state: SecretScanningAlertState.fromJson(json['state'] as String),
        resolution: SecretScanningAlertResolution.maybeFromJson(
          json['resolution'] as String?,
        ),
        resolutionComment: SecretScanningAlertResolutionComment.maybeFromJson(
          json['resolution_comment'] as String?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecretScanningUpdateAlertRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecretScanningUpdateAlertRequest.fromJson(json);
  }

  /// Sets the state of the secret scanning alert. You must provide
  /// `resolution` when you set the state to `resolved`.
  final SecretScanningAlertState state;

  /// **Required when the `state` is `resolved`.** The reason for resolving
  /// the alert.
  final SecretScanningAlertResolution? resolution;

  /// An optional comment when closing or reopening an alert. Cannot be
  /// updated or deleted.
  final SecretScanningAlertResolutionComment? resolutionComment;

  /// Converts a [SecretScanningUpdateAlertRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'state': state.toJson(),
      'resolution': resolution?.toJson(),
      'resolution_comment': resolutionComment?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    state,
    resolution,
    resolutionComment,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SecretScanningUpdateAlertRequest &&
        state == other.state &&
        resolution == other.resolution &&
        resolutionComment == other.resolutionComment;
  }
}
