import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/marketplace_account.dart';
import 'package:github_out/models/marketplace_listing_plan.dart';
import 'package:github_out/models/marketplace_listing_plan_price_model.dart';
import 'package:meta/meta.dart';

/// {@template user_marketplace_purchase}
/// User Marketplace Purchase
/// User Marketplace Purchase
/// {@endtemplate}
@immutable
class UserMarketplacePurchase {
  /// {@macro user_marketplace_purchase}
  UserMarketplacePurchase({
    required this.billingCycle,
    required this.nextBillingDate,
    required this.unitCount,
    required this.onFreeTrial,
    required this.freeTrialEndsOn,
    required this.updatedAt,
    required this.account,
    required this.plan,
  });

  /// Converts a `Map<String, dynamic>` to a [UserMarketplacePurchase].
  factory UserMarketplacePurchase.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'UserMarketplacePurchase',
      json,
      () => UserMarketplacePurchase(
        billingCycle: json['billing_cycle'] as String,
        nextBillingDate: maybeParseDateTime(
          checkedKey(json, 'next_billing_date') as String?,
        ),
        unitCount: (checkedKey(json, 'unit_count') as int?),
        onFreeTrial: json['on_free_trial'] as bool,
        freeTrialEndsOn: maybeParseDateTime(
          checkedKey(json, 'free_trial_ends_on') as String?,
        ),
        updatedAt: maybeParseDateTime(
          checkedKey(json, 'updated_at') as String?,
        ),
        account: MarketplaceAccount.fromJson(
          json['account'] as Map<String, dynamic>,
        ),
        plan: MarketplaceListingPlan.fromJson(
          json['plan'] as Map<String, dynamic>,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UserMarketplacePurchase? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return UserMarketplacePurchase.fromJson(json);
  }

  /// example: `'monthly'`
  final String billingCycle;

  /// example: `'2017-11-11T00:00:00Z'`
  final DateTime? nextBillingDate;
  final int? unitCount;

  /// example: `true`
  final bool onFreeTrial;

  /// example: `'2017-11-11T00:00:00Z'`
  final DateTime? freeTrialEndsOn;

  /// example: `'2017-11-02T01:12:12Z'`
  final DateTime? updatedAt;

  /// Marketplace Account
  final MarketplaceAccount account;

  /// Marketplace Listing Plan
  /// Marketplace Listing Plan
  final MarketplaceListingPlan plan;

  /// Converts a [UserMarketplacePurchase] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'billing_cycle': billingCycle,
      'next_billing_date': nextBillingDate?.toIso8601String(),
      'unit_count': unitCount,
      'on_free_trial': onFreeTrial,
      'free_trial_ends_on': freeTrialEndsOn?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'account': account.toJson(),
      'plan': plan.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    billingCycle,
    nextBillingDate,
    unitCount,
    onFreeTrial,
    freeTrialEndsOn,
    updatedAt,
    account,
    plan,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UserMarketplacePurchase &&
        this.billingCycle == other.billingCycle &&
        this.nextBillingDate == other.nextBillingDate &&
        this.unitCount == other.unitCount &&
        this.onFreeTrial == other.onFreeTrial &&
        this.freeTrialEndsOn == other.freeTrialEndsOn &&
        this.updatedAt == other.updatedAt &&
        this.account == other.account &&
        this.plan == other.plan;
  }
}
