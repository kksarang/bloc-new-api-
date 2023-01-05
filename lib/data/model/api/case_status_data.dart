import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'case_status_data.g.dart';

abstract class CaseStatusData
    implements Built<CaseStatusData, CaseStatusDataBuilder> {
  int get id;
  int get caseID;
  String get started_on;
  String get ends_on;
  String get time_consumption;
  String get caseStatus;
  CaseStatusData._();

  factory CaseStatusData([updates(CaseStatusDataBuilder b)]) = _$CaseStatusData;

  static Serializer<CaseStatusData> get serializer =>
      _$caseStatusDataSerializer;
}
