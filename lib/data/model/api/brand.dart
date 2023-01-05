import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'brand.g.dart';

abstract class Brand implements Built<Brand, BrandBuilder> {
  int get id;
  String get name;
  int get categoryID;
  bool? get is_selected;

  Brand._();

  factory Brand([updates(BrandBuilder b)?]) => new _$Brand((b) => b
    ..is_selected = false
    ..update(updates));

  static Serializer<Brand> get serializer => _$brandSerializer;
}
