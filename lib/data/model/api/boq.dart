import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'boq.g.dart';

abstract class Boq implements Built<Boq, BoqBuilder> {
  int get id;
  String get name;

  Boq._();

  factory Boq([updates(BoqBuilder b)]) = _$Boq;

  static Serializer<Boq> get serializer => _$boqSerializer;
}
