import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/dependency_graph_spdx_sbom_sbom_creation_info.dart';
import 'package:github_out/models/dependency_graph_spdx_sbom_sbom_packages_inner.dart';
import 'package:github_out/models/dependency_graph_spdx_sbom_sbom_packages_inner_external_refs_inner.dart';
import 'package:github_out/models/dependency_graph_spdx_sbom_sbom_relationships_inner.dart';
import 'package:meta/meta.dart';

@immutable
class DependencyGraphSpdxSbomSbom {
  DependencyGraphSpdxSbomSbom({
    required this.spdxid,
    required this.spdxVersion,
    this.comment,
    required this.creationInfo,
    required this.name,
    required this.dataLicense,
    required this.documentNamespace,
    required this.packages,
    this.relationships,
  });

  /// Converts a `Map<String, dynamic>` to a [DependencyGraphSpdxSbomSbom].
  factory DependencyGraphSpdxSbomSbom.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'DependencyGraphSpdxSbomSbom',
      json,
      () => DependencyGraphSpdxSbomSbom(
        spdxid: json['SPDXID'] as String,
        spdxVersion: json['spdxVersion'] as String,
        comment: json['comment'] as String?,
        creationInfo: DependencyGraphSpdxSbomSbomCreationInfo.fromJson(
          json['creationInfo'] as Map<String, dynamic>,
        ),
        name: json['name'] as String,
        dataLicense: json['dataLicense'] as String,
        documentNamespace: json['documentNamespace'] as String,
        packages: (json['packages'] as List)
            .map<DependencyGraphSpdxSbomSbomPackagesInner>(
              (e) => DependencyGraphSpdxSbomSbomPackagesInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        relationships: (json['relationships'] as List?)
            ?.map<DependencyGraphSpdxSbomSbomRelationshipsInner>(
              (e) => DependencyGraphSpdxSbomSbomRelationshipsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependencyGraphSpdxSbomSbom? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return DependencyGraphSpdxSbomSbom.fromJson(json);
  }

  /// The SPDX identifier for the SPDX document.
  /// example: `'SPDXRef-DOCUMENT'`
  final String spdxid;

  /// The version of the SPDX specification that this document conforms to.
  /// example: `'SPDX-2.3'`
  final String spdxVersion;

  /// An optional comment about the SPDX document.
  /// example: `'Exact versions could not be resolved for some packages. For more information: https://docs.github.com/en/code-security/supply-chain-security/understanding-your-software-supply-chain/'`
  final String? comment;
  final DependencyGraphSpdxSbomSbomCreationInfo creationInfo;

  /// The name of the SPDX document.
  /// example: `'github/github'`
  final String name;

  /// The license under which the SPDX document is licensed.
  /// example: `'CC0-1.0'`
  final String dataLicense;

  /// The namespace for the SPDX document.
  /// example:
  /// `'https://spdx.org/spdxdocs/protobom/15e41dd2-f961-4f4d-b8dc-f8f57ad70d57'`
  final String documentNamespace;
  final List<DependencyGraphSpdxSbomSbomPackagesInner> packages;
  final List<DependencyGraphSpdxSbomSbomRelationshipsInner>? relationships;

  /// Converts a [DependencyGraphSpdxSbomSbom] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'SPDXID': spdxid,
      'spdxVersion': spdxVersion,
      'comment': comment,
      'creationInfo': creationInfo.toJson(),
      'name': name,
      'dataLicense': dataLicense,
      'documentNamespace': documentNamespace,
      'packages': packages.map((e) => e.toJson()).toList(),
      'relationships': relationships?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    spdxid,
    spdxVersion,
    comment,
    creationInfo,
    name,
    dataLicense,
    documentNamespace,
    listHash(packages),
    listHash(relationships),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DependencyGraphSpdxSbomSbom &&
        this.spdxid == other.spdxid &&
        this.spdxVersion == other.spdxVersion &&
        this.comment == other.comment &&
        this.creationInfo == other.creationInfo &&
        this.name == other.name &&
        this.dataLicense == other.dataLicense &&
        this.documentNamespace == other.documentNamespace &&
        listsEqual(this.packages, other.packages) &&
        listsEqual(this.relationships, other.relationships);
  }
}
