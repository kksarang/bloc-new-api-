import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'boq_status.g.dart';

abstract class BoqStatus implements Built<BoqStatus, BoqStatusBuilder> {
  int get statusid;
  String get status;

  BoqStatus._();

  factory BoqStatus([updates(BoqStatusBuilder b)]) = _$BoqStatus;

  static Serializer<BoqStatus> get serializer => _$boqStatusSerializer;
}
