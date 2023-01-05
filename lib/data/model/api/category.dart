import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'sub_category.dart';

part 'category.g.dart';

abstract class Category implements Built<Category, CategoryBuilder> {
  int get id;
  String get name;
  bool? get is_selected;
  BuiltList<SubCategory> get subCategories;

  Category._();

  factory Category([updates(CategoryBuilder b)?]) => new _$Category((b) => b
    ..is_selected = false
    ..update(updates));

  static Serializer<Category> get serializer => _$categorySerializer;
}
