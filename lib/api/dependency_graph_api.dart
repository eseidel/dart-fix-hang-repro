import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:github_out/api_client.dart';
import 'package:github_out/api_exception.dart';
import 'package:github_out/messages/dependency_graph_create_repository_snapshot201_response.dart';
import 'package:github_out/models/basic_error.dart';
import 'package:github_out/models/dependency.dart';
import 'package:github_out/models/dependency_graph_diff_inner.dart';
import 'package:github_out/models/dependency_graph_diff_inner_change_type.dart';
import 'package:github_out/models/dependency_graph_diff_inner_scope.dart';
import 'package:github_out/models/dependency_graph_diff_inner_vulnerabilities_inner.dart';
import 'package:github_out/models/dependency_graph_spdx_sbom.dart';
import 'package:github_out/models/dependency_graph_spdx_sbom_sbom.dart';
import 'package:github_out/models/dependency_graph_spdx_sbom_sbom_creation_info.dart';
import 'package:github_out/models/dependency_graph_spdx_sbom_sbom_packages_inner.dart';
import 'package:github_out/models/dependency_graph_spdx_sbom_sbom_packages_inner_external_refs_inner.dart';
import 'package:github_out/models/dependency_graph_spdx_sbom_sbom_relationships_inner.dart';
import 'package:github_out/models/dependency_relationship.dart';
import 'package:github_out/models/dependency_scope.dart';
import 'package:github_out/models/manifest.dart';
import 'package:github_out/models/manifest_file.dart';
import 'package:github_out/models/metadata_1.dart';
import 'package:github_out/models/snapshot.dart';
import 'package:github_out/models/snapshot_detector.dart';
import 'package:github_out/models/snapshot_job.dart';
import 'package:http/http.dart' as http;

/// Endpoints to access Dependency Graph features.
class DependencyGraphApi {
  DependencyGraphApi(ApiClient? client) : client = client ?? ApiClient();

  final ApiClient client;

  /// Get a diff of the dependencies between commits
  /// Gets the diff of the dependency changes between two commits of a
  /// repository, based on the changes to the dependency manifests made in
  /// those commits.
  Future<List<DependencyGraphDiffInner>> dependencyGraphDiffRange(
    String owner,
    String repo,
    String basehead, {
    String? name,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/repos/{owner}/{repo}/dependency-graph/compare/{basehead}'
          .replaceAll('{owner}', '${owner}')
          .replaceAll('{repo}', '${repo}')
          .replaceAll('{basehead}', '${basehead}'),
      queryParameters: {
        if (name != null) 'name': [name.toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return (jsonDecode(response.body) as List)
          .map<DependencyGraphDiffInner>(
            (e) => DependencyGraphDiffInner.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Export a software bill of materials (SBOM) for a repository.
  /// Exports the software bill of materials (SBOM) for a repository in SPDX
  /// JSON format.
  Future<DependencyGraphSpdxSbom> dependencyGraphExportSbom(
    String owner,
    String repo,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/repos/{owner}/{repo}/dependency-graph/sbom'
          .replaceAll('{owner}', '${owner}')
          .replaceAll('{repo}', '${repo}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return DependencyGraphSpdxSbom.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create a snapshot of dependencies for a repository
  /// Create a new snapshot of a repository's dependencies.
  ///
  /// The authenticated user must have access to the repository.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the `repo`
  /// scope to use this endpoint.
  Future<DependencyGraphCreateRepositorySnapshot201Response>
  dependencyGraphCreateRepositorySnapshot(
    String owner,
    String repo,
    Snapshot snapshot,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/repos/{owner}/{repo}/dependency-graph/snapshots'
          .replaceAll('{owner}', '${owner}')
          .replaceAll('{repo}', '${repo}'),
      body: snapshot.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return DependencyGraphCreateRepositorySnapshot201Response.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }
}
