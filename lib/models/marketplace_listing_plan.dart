import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/marketplace_listing_plan_price_model.dart';
import 'package:meta/meta.dart';

/// {@template marketplace_listing_plan}
/// Marketplace Listing Plan
/// Marketplace Listing Plan
/// {@endtemplate}
@immutable
class MarketplaceListingPlan {
  /// {@macro marketplace_listing_plan}
  const MarketplaceListingPlan({
    required this.url,
    required this.accountsUrl,
    required this.id,
    required this.number,
    required this.name,
    required this.description,
    required this.monthlyPriceInCents,
    required this.yearlyPriceInCents,
    required this.priceModel,
    required this.hasFreeTrial,
    required this.unitName,
    required this.state,
    required this.bullets,
  });

  /// Converts a `Map<String, dynamic>` to a [MarketplaceListingPlan].
  factory MarketplaceListingPlan.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'MarketplaceListingPlan',
      json,
      () => MarketplaceListingPlan(
        url: Uri.parse(json['url'] as String),
        accountsUrl: Uri.parse(json['accounts_url'] as String),
        id: json['id'] as int,
        number: json['number'] as int,
        name: json['name'] as String,
        description: json['description'] as String,
        monthlyPriceInCents: json['monthly_price_in_cents'] as int,
        yearlyPriceInCents: json['yearly_price_in_cents'] as int,
        priceModel: MarketplaceListingPlanPriceModel.fromJson(
          json['price_model'] as String,
        ),
        hasFreeTrial: json['has_free_trial'] as bool,
        unitName: checkedKey(json, 'unit_name') as String?,
        state: json['state'] as String,
        bullets: (json['bullets'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static MarketplaceListingPlan? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return MarketplaceListingPlan.fromJson(json);
  }

  /// example: `'https://api.github.com/marketplace_listing/plans/1313'`
  final Uri url;

  /// example:
  /// `'https://api.github.com/marketplace_listing/plans/1313/accounts'`
  final Uri accountsUrl;

  /// example: `1313`
  final int id;

  /// example: `3`
  final int number;

  /// example: `'Pro'`
  final String name;

  /// example: `'A professional-grade CI solution'`
  final String description;

  /// example: `1099`
  final int monthlyPriceInCents;

  /// example: `11870`
  final int yearlyPriceInCents;

  /// example: `'FLAT_RATE'`
  final MarketplaceListingPlanPriceModel priceModel;

  /// example: `true`
  final bool hasFreeTrial;
  final String? unitName;

  /// example: `'published'`
  final String state;

  /// example: `'Up to 25 private repositories'`
  /// example: `'11 concurrent builds'`
  final List<String> bullets;

  /// Converts a [MarketplaceListingPlan] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url.toString(),
      'accounts_url': accountsUrl.toString(),
      'id': id,
      'number': number,
      'name': name,
      'description': description,
      'monthly_price_in_cents': monthlyPriceInCents,
      'yearly_price_in_cents': yearlyPriceInCents,
      'price_model': priceModel.toJson(),
      'has_free_trial': hasFreeTrial,
      'unit_name': unitName,
      'state': state,
      'bullets': bullets,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    accountsUrl,
    id,
    number,
    name,
    description,
    monthlyPriceInCents,
    yearlyPriceInCents,
    priceModel,
    hasFreeTrial,
    unitName,
    state,
    listHash(bullets),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MarketplaceListingPlan &&
        url == other.url &&
        accountsUrl == other.accountsUrl &&
        id == other.id &&
        number == other.number &&
        name == other.name &&
        description == other.description &&
        monthlyPriceInCents == other.monthlyPriceInCents &&
        yearlyPriceInCents == other.yearlyPriceInCents &&
        priceModel == other.priceModel &&
        hasFreeTrial == other.hasFreeTrial &&
        unitName == other.unitName &&
        state == other.state &&
        listsEqual(bullets, other.bullets);
  }
}
