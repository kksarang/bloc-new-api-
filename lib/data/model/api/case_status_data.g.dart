// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_status_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CaseStatusData> _$caseStatusDataSerializer =
    new _$CaseStatusDataSerializer();

class _$CaseStatusDataSerializer
    implements StructuredSerializer<CaseStatusData> {
  @override
  final Iterable<Type> types = const [CaseStatusData, _$CaseStatusData];
  @override
  final String wireName = 'CaseStatusData';

  @override
  Iterable<Object?> serialize(Serializers serializers, CaseStatusData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'caseID',
      serializers.serialize(object.caseID, specifiedType: const FullType(int)),
      'started_on',
      serializers.serialize(object.started_on,
          specifiedType: const FullType(String)),
      'ends_on',
      serializers.serialize(object.ends_on,
          specifiedType: const FullType(String)),
      'time_consumption',
      serializers.serialize(object.time_consumption,
          specifiedType: const FullType(String)),
      'caseStatus',
      serializers.serialize(object.caseStatus,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CaseStatusData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaseStatusDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'caseID':
          result.caseID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'started_on':
          result.started_on = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ends_on':
          result.ends_on = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'time_consumption':
          result.time_consumption = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'caseStatus':
          result.caseStatus = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CaseStatusData extends CaseStatusData {
  @override
  final int id;
  @override
  final int caseID;
  @override
  final String started_on;
  @override
  final String ends_on;
  @override
  final String time_consumption;
  @override
  final String caseStatus;

  factory _$CaseStatusData([void Function(CaseStatusDataBuilder)? updates]) =>
      (new CaseStatusDataBuilder()..update(updates))._build();

  _$CaseStatusData._(
      {required this.id,
      required this.caseID,
      required this.started_on,
      required this.ends_on,
      required this.time_consumption,
      required this.caseStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'CaseStatusData', 'id');
    BuiltValueNullFieldError.checkNotNull(caseID, r'CaseStatusData', 'caseID');
    BuiltValueNullFieldError.checkNotNull(
        started_on, r'CaseStatusData', 'started_on');
    BuiltValueNullFieldError.checkNotNull(
        ends_on, r'CaseStatusData', 'ends_on');
    BuiltValueNullFieldError.checkNotNull(
        time_consumption, r'CaseStatusData', 'time_consumption');
    BuiltValueNullFieldError.checkNotNull(
        caseStatus, r'CaseStatusData', 'caseStatus');
  }

  @override
  CaseStatusData rebuild(void Function(CaseStatusDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaseStatusDataBuilder toBuilder() =>
      new CaseStatusDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaseStatusData &&
        id == other.id &&
        caseID == other.caseID &&
        started_on == other.started_on &&
        ends_on == other.ends_on &&
        time_consumption == other.time_consumption &&
        caseStatus == other.caseStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), caseID.hashCode),
                    started_on.hashCode),
                ends_on.hashCode),
            time_consumption.hashCode),
        caseStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CaseStatusData')
          ..add('id', id)
          ..add('caseID', caseID)
          ..add('started_on', started_on)
          ..add('ends_on', ends_on)
          ..add('time_consumption', time_consumption)
          ..add('caseStatus', caseStatus))
        .toString();
  }
}

class CaseStatusDataBuilder
    implements Builder<CaseStatusData, CaseStatusDataBuilder> {
  _$CaseStatusData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _caseID;
  int? get caseID => _$this._caseID;
  set caseID(int? caseID) => _$this._caseID = caseID;

  String? _started_on;
  String? get started_on => _$this._started_on;
  set started_on(String? started_on) => _$this._started_on = started_on;

  String? _ends_on;
  String? get ends_on => _$this._ends_on;
  set ends_on(String? ends_on) => _$this._ends_on = ends_on;

  String? _time_consumption;
  String? get time_consumption => _$this._time_consumption;
  set time_consumption(String? time_consumption) =>
      _$this._time_consumption = time_consumption;

  String? _caseStatus;
  String? get caseStatus => _$this._caseStatus;
  set caseStatus(String? caseStatus) => _$this._caseStatus = caseStatus;

  CaseStatusDataBuilder();

  CaseStatusDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _caseID = $v.caseID;
      _started_on = $v.started_on;
      _ends_on = $v.ends_on;
      _time_consumption = $v.time_consumption;
      _caseStatus = $v.caseStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaseStatusData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CaseStatusData;
  }

  @override
  void update(void Function(CaseStatusDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CaseStatusData build() => _build();

  _$CaseStatusData _build() {
    final _$result = _$v ??
        new _$CaseStatusData._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CaseStatusData', 'id'),
            caseID: BuiltValueNullFieldError.checkNotNull(
                caseID, r'CaseStatusData', 'caseID'),
            started_on: BuiltValueNullFieldError.checkNotNull(
                started_on, r'CaseStatusData', 'started_on'),
            ends_on: BuiltValueNullFieldError.checkNotNull(
                ends_on, r'CaseStatusData', 'ends_on'),
            time_consumption: BuiltValueNullFieldError.checkNotNull(
                time_consumption, r'CaseStatusData', 'time_consumption'),
            caseStatus: BuiltValueNullFieldError.checkNotNull(
                caseStatus, r'CaseStatusData', 'caseStatus'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
