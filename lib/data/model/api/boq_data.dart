import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'boq_data.g.dart';

abstract class BoqData implements Built<BoqData, BoqDataBuilder> {
  int get id;
  int get boqID;
  int get productID;
  String get product;
  int get categoryID;
  String get category;
  int get subcategoryID;
  String get subcategory;
  int get brandID;
  String get brand;
  int get quantity;

  BoqData._();

  factory BoqData([updates(BoqDataBuilder b)]) = _$BoqData;

  static Serializer<BoqData> get serializer => _$boqDataSerializer;
}
