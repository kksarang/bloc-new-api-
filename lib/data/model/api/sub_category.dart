import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sub_category.g.dart';

abstract class SubCategory implements Built<SubCategory, SubCategoryBuilder> {
  int get id;
  String get name;
  int? get categoryId;
  bool? get is_selected;

  SubCategory._();

  factory SubCategory([updates(SubCategoryBuilder b)?]) =>
      new _$SubCategory((b) => b
        ..is_selected = false
        ..update(updates));

  static Serializer<SubCategory> get serializer => _$subCategorySerializer;
}
