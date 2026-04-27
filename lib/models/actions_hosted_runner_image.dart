import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/actions_hosted_runner_image_source.dart';
import 'package:meta/meta.dart';

/// {@template actions_hosted_runner_image}
/// GitHub-hosted runner image details.
/// Provides details of a hosted runner image
/// {@endtemplate}
@immutable
class ActionsHostedRunnerImage {
  /// {@macro actions_hosted_runner_image}
  ActionsHostedRunnerImage({
    required this.id,
    required this.platform,
    required this.sizeGb,
    required this.displayName,
    required this.source,
  });

  /// Converts a `Map<String, dynamic>` to an [ActionsHostedRunnerImage].
  factory ActionsHostedRunnerImage.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ActionsHostedRunnerImage',
      json,
      () => ActionsHostedRunnerImage(
        id: json['id'] as String,
        platform: json['platform'] as String,
        sizeGb: (json['size_gb'] as int),
        displayName: json['display_name'] as String,
        source: ActionsHostedRunnerImageSource.fromJson(
          json['source'] as String,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsHostedRunnerImage? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ActionsHostedRunnerImage.fromJson(json);
  }

  /// The ID of the image. Use this ID for the `image` parameter when creating
  /// a new larger runner.
  /// example: `'ubuntu-20.04'`
  final String id;

  /// The operating system of the image.
  /// example: `'linux-x64'`
  final String platform;

  /// Image size in GB.
  /// example: `86`
  final int sizeGb;

  /// Display name for this image.
  /// example: `20.04`
  final String displayName;

  /// The image provider.
  final ActionsHostedRunnerImageSource source;

  /// Converts an [ActionsHostedRunnerImage] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'platform': platform,
      'size_gb': sizeGb,
      'display_name': displayName,
      'source': source.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    platform,
    sizeGb,
    displayName,
    source,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ActionsHostedRunnerImage &&
        this.id == other.id &&
        this.platform == other.platform &&
        this.sizeGb == other.sizeGb &&
        this.displayName == other.displayName &&
        this.source == other.source;
  }
}
