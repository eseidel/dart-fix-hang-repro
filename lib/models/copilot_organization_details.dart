// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/copilot_organization_details_cli.dart';
import 'package:github_out/models/copilot_organization_details_ide_chat.dart';
import 'package:github_out/models/copilot_organization_details_plan_type.dart';
import 'package:github_out/models/copilot_organization_details_platform_chat.dart';
import 'package:github_out/models/copilot_organization_details_public_code_suggestions.dart';
import 'package:github_out/models/copilot_organization_details_seat_management_setting.dart';
import 'package:github_out/models/copilot_organization_seat_breakdown.dart';
import 'package:meta/meta.dart';

/// {@template copilot_organization_details}
/// Copilot Organization Details
/// Information about the seat breakdown and policies set for an organization
/// with a Copilot Business or Copilot Enterprise subscription.
/// {@endtemplate}
@immutable
class CopilotOrganizationDetails {
  /// {@macro copilot_organization_details}
  const CopilotOrganizationDetails({
    required this.seatBreakdown,
    required this.publicCodeSuggestions,
    required this.seatManagementSetting,
    required this.entries,
    this.ideChat,
    this.platformChat,
    this.cli,
    this.planType,
  });

  /// Converts a `Map<String, dynamic>` to a [CopilotOrganizationDetails].
  factory CopilotOrganizationDetails.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CopilotOrganizationDetails',
      json,
      () => CopilotOrganizationDetails(
        seatBreakdown: CopilotOrganizationSeatBreakdown.fromJson(
          json['seat_breakdown'] as Map<String, dynamic>,
        ),
        publicCodeSuggestions:
            CopilotOrganizationDetailsPublicCodeSuggestions.fromJson(
              json['public_code_suggestions'] as String,
            ),
        ideChat: CopilotOrganizationDetailsIdeChat.maybeFromJson(
          json['ide_chat'] as String?,
        ),
        platformChat: CopilotOrganizationDetailsPlatformChat.maybeFromJson(
          json['platform_chat'] as String?,
        ),
        cli: CopilotOrganizationDetailsCli.maybeFromJson(
          json['cli'] as String?,
        ),
        seatManagementSetting:
            CopilotOrganizationDetailsSeatManagementSetting.fromJson(
              json['seat_management_setting'] as String,
            ),
        planType: CopilotOrganizationDetailsPlanType.maybeFromJson(
          json['plan_type'] as String?,
        ),
        entries: json.map(MapEntry.new),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CopilotOrganizationDetails? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CopilotOrganizationDetails.fromJson(json);
  }

  /// Copilot Seat Breakdown
  /// The breakdown of Copilot Business seats for the organization.
  final CopilotOrganizationSeatBreakdown seatBreakdown;

  /// The organization policy for allowing or blocking suggestions matching
  /// public code (duplication detection filter).
  final CopilotOrganizationDetailsPublicCodeSuggestions publicCodeSuggestions;

  /// The organization policy for allowing or disallowing Copilot Chat in the
  /// IDE.
  final CopilotOrganizationDetailsIdeChat? ideChat;

  /// The organization policy for allowing or disallowing Copilot features on
  /// GitHub.com.
  final CopilotOrganizationDetailsPlatformChat? platformChat;

  /// The organization policy for allowing or disallowing Copilot in the CLI.
  final CopilotOrganizationDetailsCli? cli;

  /// The mode of assigning new seats.
  final CopilotOrganizationDetailsSeatManagementSetting seatManagementSetting;

  /// The Copilot plan of the organization, or the parent enterprise, when
  /// applicable.
  final CopilotOrganizationDetailsPlanType? planType;
  final Map<String, dynamic> entries;

  dynamic operator [](String key) => entries[key];

  /// Converts a [CopilotOrganizationDetails] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'seat_breakdown': seatBreakdown.toJson(),
      'public_code_suggestions': publicCodeSuggestions.toJson(),
      'ide_chat': ideChat?.toJson(),
      'platform_chat': platformChat?.toJson(),
      'cli': cli?.toJson(),
      'seat_management_setting': seatManagementSetting.toJson(),
      'plan_type': planType?.toJson(),
      ...entries.map(MapEntry.new),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    seatBreakdown,
    publicCodeSuggestions,
    ideChat,
    platformChat,
    cli,
    seatManagementSetting,
    planType,
    entries,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CopilotOrganizationDetails &&
        seatBreakdown == other.seatBreakdown &&
        publicCodeSuggestions == other.publicCodeSuggestions &&
        ideChat == other.ideChat &&
        platformChat == other.platformChat &&
        cli == other.cli &&
        seatManagementSetting == other.seatManagementSetting &&
        planType == other.planType &&
        mapsEqual(entries, other.entries);
  }
}
