import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'boq_data.dart';
import 'boq_status.dart';
import 'case_details.dart';
import 'case_status_data.dart';
import 'meta.dart';

part 'case_details_data.g.dart';

abstract class CaseDetailsData extends Object with Meta implements Built<CaseDetailsData, CaseDetailsDataBuilder> {
  @BuiltValueField(wireName: 'case')
  CaseDetails get case_data;
  CaseStatusData? get caseStatus;

  @BuiltValueField(wireName: 'BOQ')
  BuiltList<BoqData> get boq_items;

  @BuiltValueField(wireName: 'BOQStatus')
  BoqStatus? get boq_status;

  CaseDetailsData._();

  factory CaseDetailsData([updates(CaseDetailsDataBuilder b)]) = _$CaseDetailsData;

  static Serializer<CaseDetailsData> get serializer => _$caseDetailsDataSerializer;
}
