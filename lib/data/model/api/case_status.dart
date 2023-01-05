import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'case_status.g.dart';

abstract class CaseStatus implements Built<CaseStatus, CaseStatusBuilder> {
  int get id;
  String get name;

  CaseStatus._();

  factory CaseStatus([updates(CaseStatusBuilder b)]) = _$CaseStatus;

  static Serializer<CaseStatus> get serializer => _$caseStatusSerializer;
}
