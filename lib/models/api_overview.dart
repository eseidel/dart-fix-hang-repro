import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/api_overview_domains.dart';
import 'package:github_out/models/api_overview_domains_actions_inbound.dart';
import 'package:github_out/models/api_overview_domains_artifact_attestations.dart';
import 'package:github_out/models/api_overview_ssh_key_fingerprints.dart';
import 'package:meta/meta.dart';

/// {@template api_overview}
/// Api Overview
/// Api Overview
/// {@endtemplate}
@immutable
class ApiOverview {
  /// {@macro api_overview}
  ApiOverview({
    required this.verifiablePasswordAuthentication,
    this.sshKeyFingerprints,
    this.sshKeys,
    this.hooks,
    this.githubEnterpriseImporter,
    this.web,
    this.api,
    this.git,
    this.packages,
    this.pages,
    this.importer,
    this.actions,
    this.actionsMacos,
    this.codespaces,
    this.dependabot,
    this.copilot,
    this.domains,
  });

  /// Converts a `Map<String, dynamic>` to an [ApiOverview].
  factory ApiOverview.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ApiOverview',
      json,
      () => ApiOverview(
        verifiablePasswordAuthentication:
            json['verifiable_password_authentication'] as bool,
        sshKeyFingerprints: ApiOverviewSshKeyFingerprints.maybeFromJson(
          json['ssh_key_fingerprints'] as Map<String, dynamic>?,
        ),
        sshKeys: (json['ssh_keys'] as List?)?.cast<String>(),
        hooks: (json['hooks'] as List?)?.cast<String>(),
        githubEnterpriseImporter: (json['github_enterprise_importer'] as List?)
            ?.cast<String>(),
        web: (json['web'] as List?)?.cast<String>(),
        api: (json['api'] as List?)?.cast<String>(),
        git: (json['git'] as List?)?.cast<String>(),
        packages: (json['packages'] as List?)?.cast<String>(),
        pages: (json['pages'] as List?)?.cast<String>(),
        importer: (json['importer'] as List?)?.cast<String>(),
        actions: (json['actions'] as List?)?.cast<String>(),
        actionsMacos: (json['actions_macos'] as List?)?.cast<String>(),
        codespaces: (json['codespaces'] as List?)?.cast<String>(),
        dependabot: (json['dependabot'] as List?)?.cast<String>(),
        copilot: (json['copilot'] as List?)?.cast<String>(),
        domains: ApiOverviewDomains.maybeFromJson(
          json['domains'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ApiOverview? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ApiOverview.fromJson(json);
  }

  /// example: `true`
  final bool verifiablePasswordAuthentication;
  final ApiOverviewSshKeyFingerprints? sshKeyFingerprints;

  /// example: `'ssh-ed25519 ABCDEFGHIJKLMNOPQRSTUVWXYZ'`
  final List<String>? sshKeys;

  /// example: `'192.0.2.1'`
  final List<String>? hooks;

  /// example: `'192.0.2.1'`
  final List<String>? githubEnterpriseImporter;

  /// example: `'192.0.2.1'`
  final List<String>? web;

  /// example: `'192.0.2.1'`
  final List<String>? api;

  /// example: `'192.0.2.1'`
  final List<String>? git;

  /// example: `'192.0.2.1'`
  final List<String>? packages;

  /// example: `'192.0.2.1'`
  final List<String>? pages;

  /// example: `'192.0.2.1'`
  final List<String>? importer;

  /// example: `'192.0.2.1'`
  final List<String>? actions;

  /// example: `'192.0.2.1'`
  final List<String>? actionsMacos;

  /// example: `'192.0.2.1'`
  final List<String>? codespaces;

  /// example: `'192.0.2.1'`
  final List<String>? dependabot;

  /// example: `'192.0.2.1'`
  final List<String>? copilot;
  final ApiOverviewDomains? domains;

  /// Converts an [ApiOverview] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'verifiable_password_authentication': verifiablePasswordAuthentication,
      'ssh_key_fingerprints': sshKeyFingerprints?.toJson(),
      'ssh_keys': sshKeys,
      'hooks': hooks,
      'github_enterprise_importer': githubEnterpriseImporter,
      'web': web,
      'api': api,
      'git': git,
      'packages': packages,
      'pages': pages,
      'importer': importer,
      'actions': actions,
      'actions_macos': actionsMacos,
      'codespaces': codespaces,
      'dependabot': dependabot,
      'copilot': copilot,
      'domains': domains?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    verifiablePasswordAuthentication,
    sshKeyFingerprints,
    listHash(sshKeys),
    listHash(hooks),
    listHash(githubEnterpriseImporter),
    listHash(web),
    listHash(api),
    listHash(git),
    listHash(packages),
    listHash(pages),
    listHash(importer),
    listHash(actions),
    listHash(actionsMacos),
    listHash(codespaces),
    listHash(dependabot),
    listHash(copilot),
    domains,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ApiOverview &&
        this.verifiablePasswordAuthentication ==
            other.verifiablePasswordAuthentication &&
        this.sshKeyFingerprints == other.sshKeyFingerprints &&
        listsEqual(this.sshKeys, other.sshKeys) &&
        listsEqual(this.hooks, other.hooks) &&
        listsEqual(
          this.githubEnterpriseImporter,
          other.githubEnterpriseImporter,
        ) &&
        listsEqual(this.web, other.web) &&
        listsEqual(this.api, other.api) &&
        listsEqual(this.git, other.git) &&
        listsEqual(this.packages, other.packages) &&
        listsEqual(this.pages, other.pages) &&
        listsEqual(this.importer, other.importer) &&
        listsEqual(this.actions, other.actions) &&
        listsEqual(this.actionsMacos, other.actionsMacos) &&
        listsEqual(this.codespaces, other.codespaces) &&
        listsEqual(this.dependabot, other.dependabot) &&
        listsEqual(this.copilot, other.copilot) &&
        this.domains == other.domains;
  }
}
