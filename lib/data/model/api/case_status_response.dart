import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'case_status.dart';
import 'meta.dart';

part 'case_status_response.g.dart';

abstract class CaseStatusResponse extends Object
    with Meta
    implements Built<CaseStatusResponse, CaseStatusResponseBuilder> {
  BuiltList<CaseStatus> get case_status;
  CaseStatusResponse._();

  factory CaseStatusResponse([updates(CaseStatusResponseBuilder b)]) = _$CaseStatusResponse;

  static Serializer<CaseStatusResponse> get serializer => _$caseStatusResponseSerializer;
}
