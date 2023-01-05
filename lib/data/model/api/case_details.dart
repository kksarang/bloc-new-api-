import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'case_details.g.dart';

abstract class CaseDetails implements Built<CaseDetails, CaseDetailsBuilder> {
  int get id;
  String get caseNumber;
  int get customerID;
  String get scheduleDate;
  String get duration;
  String get endDate;
  String get subject;
  int get siteID;
  String get site;
  String get site_latitude;
  String get site_longitude;
  String get type;
  String get priority;
  String get status;
  String get assignee;
  String get description;
  String? get contactPerson;
  String? get customer;
  int get contractID;
  String? get contractNumber;
  int? get contractValue;
  String? get contarct_start;
  String? get contract_end;
  String? get service_team;

  CaseDetails._();

  factory CaseDetails([updates(CaseDetailsBuilder b)]) = _$CaseDetails;

  static Serializer<CaseDetails> get serializer => _$caseDetailsSerializer;
}
