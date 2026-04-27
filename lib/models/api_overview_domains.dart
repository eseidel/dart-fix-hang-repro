import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/api_overview_domains_actions_inbound.dart';
import 'package:github_out/models/api_overview_domains_artifact_attestations.dart';
import 'package:meta/meta.dart';

@immutable
class ApiOverviewDomains {
  ApiOverviewDomains({
    this.website,
    this.codespaces,
    this.copilot,
    this.packages,
    this.actions,
    this.actionsInbound,
    this.artifactAttestations,
  });

  /// Converts a `Map<String, dynamic>` to an [ApiOverviewDomains].
  factory ApiOverviewDomains.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ApiOverviewDomains',
      json,
      () => ApiOverviewDomains(
        website: (json['website'] as List?)?.cast<String>(),
        codespaces: (json['codespaces'] as List?)?.cast<String>(),
        copilot: (json['copilot'] as List?)?.cast<String>(),
        packages: (json['packages'] as List?)?.cast<String>(),
        actions: (json['actions'] as List?)?.cast<String>(),
        actionsInbound: ApiOverviewDomainsActionsInbound.maybeFromJson(
          json['actions_inbound'] as Map<String, dynamic>?,
        ),
        artifactAttestations:
            ApiOverviewDomainsArtifactAttestations.maybeFromJson(
              json['artifact_attestations'] as Map<String, dynamic>?,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ApiOverviewDomains? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ApiOverviewDomains.fromJson(json);
  }

  final List<String>? website;
  final List<String>? codespaces;
  final List<String>? copilot;
  final List<String>? packages;
  final List<String>? actions;
  final ApiOverviewDomainsActionsInbound? actionsInbound;
  final ApiOverviewDomainsArtifactAttestations? artifactAttestations;

  /// Converts an [ApiOverviewDomains] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'website': website,
      'codespaces': codespaces,
      'copilot': copilot,
      'packages': packages,
      'actions': actions,
      'actions_inbound': actionsInbound?.toJson(),
      'artifact_attestations': artifactAttestations?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    listHash(website),
    listHash(codespaces),
    listHash(copilot),
    listHash(packages),
    listHash(actions),
    actionsInbound,
    artifactAttestations,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ApiOverviewDomains &&
        listsEqual(this.website, other.website) &&
        listsEqual(this.codespaces, other.codespaces) &&
        listsEqual(this.copilot, other.copilot) &&
        listsEqual(this.packages, other.packages) &&
        listsEqual(this.actions, other.actions) &&
        this.actionsInbound == other.actionsInbound &&
        this.artifactAttestations == other.artifactAttestations;
  }
}
