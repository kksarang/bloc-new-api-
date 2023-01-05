// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_status_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CaseStatusResponse> _$caseStatusResponseSerializer =
    new _$CaseStatusResponseSerializer();

class _$CaseStatusResponseSerializer
    implements StructuredSerializer<CaseStatusResponse> {
  @override
  final Iterable<Type> types = const [CaseStatusResponse, _$CaseStatusResponse];
  @override
  final String wireName = 'CaseStatusResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CaseStatusResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'case_status',
      serializers.serialize(object.case_status,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CaseStatus)])),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CaseStatusResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaseStatusResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'case_status':
          result.case_status.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CaseStatus)]))!
              as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CaseStatusResponse extends CaseStatusResponse {
  @override
  final BuiltList<CaseStatus> case_status;
  @override
  final bool status;
  @override
  final String message;

  factory _$CaseStatusResponse(
          [void Function(CaseStatusResponseBuilder)? updates]) =>
      (new CaseStatusResponseBuilder()..update(updates))._build();

  _$CaseStatusResponse._(
      {required this.case_status, required this.status, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        case_status, r'CaseStatusResponse', 'case_status');
    BuiltValueNullFieldError.checkNotNull(
        status, r'CaseStatusResponse', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'CaseStatusResponse', 'message');
  }

  @override
  CaseStatusResponse rebuild(
          void Function(CaseStatusResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaseStatusResponseBuilder toBuilder() =>
      new CaseStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaseStatusResponse &&
        case_status == other.case_status &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, case_status.hashCode), status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CaseStatusResponse')
          ..add('case_status', case_status)
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class CaseStatusResponseBuilder
    implements Builder<CaseStatusResponse, CaseStatusResponseBuilder> {
  _$CaseStatusResponse? _$v;

  ListBuilder<CaseStatus>? _case_status;
  ListBuilder<CaseStatus> get case_status =>
      _$this._case_status ??= new ListBuilder<CaseStatus>();
  set case_status(ListBuilder<CaseStatus>? case_status) =>
      _$this._case_status = case_status;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CaseStatusResponseBuilder();

  CaseStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _case_status = $v.case_status.toBuilder();
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaseStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CaseStatusResponse;
  }

  @override
  void update(void Function(CaseStatusResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CaseStatusResponse build() => _build();

  _$CaseStatusResponse _build() {
    _$CaseStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$CaseStatusResponse._(
              case_status: case_status.build(),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'CaseStatusResponse', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'CaseStatusResponse', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'case_status';
        case_status.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CaseStatusResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
