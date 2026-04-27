/// example: `'FLAT_RATE'`
enum MarketplaceListingPlanPriceModel {
  free._('FREE'),
  flatRate._('FLAT_RATE'),
  perUnit._('PER_UNIT');

  const MarketplaceListingPlanPriceModel._(this.value);

  /// Creates a MarketplaceListingPlanPriceModel from a json string.
  factory MarketplaceListingPlanPriceModel.fromJson(String json) {
    return MarketplaceListingPlanPriceModel.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown MarketplaceListingPlanPriceModel value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static MarketplaceListingPlanPriceModel? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return MarketplaceListingPlanPriceModel.fromJson(json);
  }

  /// The value of the enum, as a string.  This is the exact value
  /// from the OpenAPI spec and will be used for network transport.
  final String value;

  /// Converts the enum to a json string.
  String toJson() => value;

  /// Returns the string value of the enum.
  @override
  String toString() => value;
}
