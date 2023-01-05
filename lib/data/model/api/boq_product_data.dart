import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'category_models.dart';
import 'meta.dart';

part 'boq_product_data.g.dart';

abstract class BoqProductData extends Object
    with Meta
    implements Built<BoqProductData, BoqProductDataBuilder> {
  BuiltList<Category> get categories;
  BuiltList<SubCategory> get subCategories;
  BuiltList<Brand> get brands;
  BuiltList<Product> get products;

  BoqProductData._();

  factory BoqProductData([updates(BoqProductDataBuilder b)]) = _$BoqProductData;

  static Serializer<BoqProductData> get serializer =>
      _$boqProductDataSerializer;
}
