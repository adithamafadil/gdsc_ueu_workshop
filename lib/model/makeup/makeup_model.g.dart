// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'makeup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MakeupModel _$MakeupModelFromJson(Map<String, dynamic> json) => MakeupModel(
      id: json['id'] as int,
      brand: json['brand'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      priceSign: json['price_sign'] as String?,
      currency: json['currency'] as String?,
      imageLink: json['image_link'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      category: json['category'] as String?,
      productType: json['product_type'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      productColors: (json['product_colors'] as List<dynamic>)
          .map((e) => ProductColorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MakeupModelToJson(MakeupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'name': instance.name,
      'price': instance.price,
      'price_sign': instance.priceSign,
      'currency': instance.currency,
      'image_link': instance.imageLink,
      'description': instance.description,
      'rating': instance.rating,
      'category': instance.category,
      'product_type': instance.productType,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'product_colors': instance.productColors,
    };

ProductColorModel _$ProductColorModelFromJson(Map<String, dynamic> json) =>
    ProductColorModel(
      hexValue: json['hex_values'] as String?,
      colourName: json['colour_name'] as String?,
    );

Map<String, dynamic> _$ProductColorModelToJson(ProductColorModel instance) =>
    <String, dynamic>{
      'hex_values': instance.hexValue,
      'colour_name': instance.colourName,
    };
