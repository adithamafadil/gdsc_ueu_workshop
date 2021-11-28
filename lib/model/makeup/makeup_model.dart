import 'package:json_annotation/json_annotation.dart';

part 'makeup_model.g.dart';

@JsonSerializable()
class MakeupModel {
  final int id;
  final String brand;
  final String name;
  final String price;
  @JsonKey(name: 'price_sign')
  final String? priceSign;
  final String? currency;
  @JsonKey(name: 'image_link')
  final String imageLink;
  final String description;
  final double? rating;
  final String? category;
  @JsonKey(name: 'product_type')
  final String productType;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @JsonKey(name: 'product_colors')
  final List<ProductColorModel> productColors;

  MakeupModel({
    required this.id,
    required this.brand,
    required this.name,
    required this.price,
    this.priceSign,
    this.currency,
    required this.imageLink,
    required this.description,
    this.rating,
    this.category,
    required this.productType,
    required this.createdAt,
    required this.updatedAt,
    required this.productColors,
  });

  factory MakeupModel.fromJson(Map<String, dynamic> json) =>
      _$MakeupModelFromJson(json);

  Map<String, dynamic> toJson() => _$MakeupModelToJson(this);
}

@JsonSerializable()
class ProductColorModel {
  @JsonKey(name: 'hex_values')
  final String? hexValue;
  @JsonKey(name: 'colour_name')
  final String? colourName;

  ProductColorModel({this.hexValue, this.colourName});

  factory ProductColorModel.fromJson(Map<String, dynamic> json) =>
      _$ProductColorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductColorModelToJson(this);
}
