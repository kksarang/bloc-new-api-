// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_details_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CaseDetailsData> _$caseDetailsDataSerializer = new _$CaseDetailsDataSerializer();

class _$CaseDetailsDataSerializer implements StructuredSerializer<CaseDetailsData> {
  @override
  final Iterable<Type> types = const [CaseDetailsData, _$CaseDetailsData];
  @override
  final String wireName = 'CaseDetailsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, CaseDetailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'case',
      serializers.serialize(object.case_data, specifiedType: const FullType(CaseDetails)),
      'BOQ',
      serializers.serialize(object.boq_items,
          specifiedType: const FullType(BuiltList, const [const FullType(BoqData)])),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.caseStatus;
    if (value != null) {
      result
        ..add('caseStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(CaseStatusData)));
    }
    value = object.boq_status;
    if (value != null) {
      result
        ..add('BOQStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(BoqStatus)));
    }
    return result;
  }

  @override
  CaseDetailsData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaseDetailsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'case':
          result.case_data
              .replace(serializers.deserialize(value, specifiedType: const FullType(CaseDetails))! as CaseDetails);
          break;
        case 'caseStatus':
          result.caseStatus.replace(
              serializers.deserialize(value, specifiedType: const FullType(CaseStatusData))! as CaseStatusData);
          break;
        case 'BOQ':
          result.boq_items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(BoqData)]))! as BuiltList<Object?>);
          break;
        case 'BOQStatus':
          result.boq_status
              .replace(serializers.deserialize(value, specifiedType: const FullType(BoqStatus))! as BoqStatus);
          break;
        case 'status':
          result.status = serializers.deserialize(value, specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value, specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CaseDetailsData extends CaseDetailsData {
  @override
  final CaseDetails case_data;
  @override
  final CaseStatusData? caseStatus;
  @override
  final BuiltList<BoqData> boq_items;

  @override
  final BoqStatus? boq_status;

  @override
  final bool status;
  @override
  final String message;

  factory _$CaseDetailsData([void Function(CaseDetailsDataBuilder)? updates]) =>
      (new CaseDetailsDataBuilder()..update(updates))._build();

  _$CaseDetailsData._(
      {required this.case_data,
      this.caseStatus,
      required this.boq_items,
      this.boq_status,
      required this.status,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(case_data, r'CaseDetailsData', 'case_data');
    BuiltValueNullFieldError.checkNotNull(boq_items, r'CaseDetailsData', 'boq_items');

    BuiltValueNullFieldError.checkNotNull(status, r'CaseDetailsData', 'status');
    BuiltValueNullFieldError.checkNotNull(message, r'CaseDetailsData', 'message');
  }

  @override
  CaseDetailsData rebuild(void Function(CaseDetailsDataBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  CaseDetailsDataBuilder toBuilder() => new CaseDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaseDetailsData &&
        case_data == other.case_data &&
        caseStatus == other.caseStatus &&
        boq_items == other.boq_items &&
        boq_status == other.boq_status &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc($jc(0, case_data.hashCode), caseStatus.hashCode), boq_items.hashCode), boq_status.hashCode),
            status.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CaseDetailsData')
          ..add('case_data', case_data)
          ..add('caseStatus', caseStatus)
          ..add('boq_items', boq_items)
          ..add('boq_status', boq_status)
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class CaseDetailsDataBuilder implements Builder<CaseDetailsData, CaseDetailsDataBuilder> {
  _$CaseDetailsData? _$v;

  CaseDetailsBuilder? _case_data;
  CaseDetailsBuilder get case_data => _$this._case_data ??= new CaseDetailsBuilder();
  set case_data(CaseDetailsBuilder? case_data) => _$this._case_data = case_data;

  CaseStatusDataBuilder? _caseStatus;
  CaseStatusDataBuilder get caseStatus => _$this._caseStatus ??= new CaseStatusDataBuilder();
  set caseStatus(CaseStatusDataBuilder? caseStatus) => _$this._caseStatus = caseStatus;

  ListBuilder<BoqData>? _boq_items;
  ListBuilder<BoqData> get boq_items => _$this._boq_items ??= new ListBuilder<BoqData>();
  set boq_items(ListBuilder<BoqData>? boq_items) => _$this._boq_items = boq_items;

  BoqStatusBuilder? _boq_status;
  BoqStatusBuilder get boq_status => _$this._boq_status ??= new BoqStatusBuilder();
  set boq_status(BoqStatusBuilder? boq_status) => _$this._boq_status = boq_status;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CaseDetailsDataBuilder();

  CaseDetailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _case_data = $v.case_data.toBuilder();
      _caseStatus = $v.caseStatus?.toBuilder();
      _boq_items = $v.boq_items.toBuilder();
      _boq_status = $v.boq_status?.toBuilder();
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaseDetailsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CaseDetailsData;
  }

  @override
  void update(void Function(CaseDetailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CaseDetailsData build() => _build();

  _$CaseDetailsData _build() {
    _$CaseDetailsData _$result;
    try {
      _$result = _$v ??
          new _$CaseDetailsData._(
              case_data: case_data.build(),
              caseStatus: _caseStatus?.build(),
              boq_items: boq_items.build(),
              boq_status: _boq_status?.build(),
              status: BuiltValueNullFieldError.checkNotNull(status, r'CaseDetailsData', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(message, r'CaseDetailsData', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'case_data';
        case_data.build();
        _$failedField = 'caseStatus';
        _caseStatus?.build();
        _$failedField = 'boq_items';
        boq_items.build();

        _$failedField = 'boq_status';
        _boq_status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(r'CaseDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
