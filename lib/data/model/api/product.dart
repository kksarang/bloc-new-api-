import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product.g.dart';

abstract class Product implements Built<Product, ProductBuilder> {
  int get id;
  String get name;
  int get categoryID;
  bool? get is_selected;

  Product._();

  factory Product([updates(ProductBuilder b)?]) => new _$Product((b) => b
    ..is_selected = false
    ..update(updates));

  static Serializer<Product> get serializer => _$productSerializer;
}
