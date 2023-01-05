// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boq_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BoqStatus> _$boqStatusSerializer = new _$BoqStatusSerializer();

class _$BoqStatusSerializer implements StructuredSerializer<BoqStatus> {
  @override
  final Iterable<Type> types = const [BoqStatus, _$BoqStatus];
  @override
  final String wireName = 'BoqStatus';

  @override
  Iterable<Object?> serialize(Serializers serializers, BoqStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'statusid',
      serializers.serialize(object.statusid,
          specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BoqStatus deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BoqStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'statusid':
          result.statusid = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BoqStatus extends BoqStatus {
  @override
  final int statusid;
  @override
  final String status;

  factory _$BoqStatus([void Function(BoqStatusBuilder)? updates]) =>
      (new BoqStatusBuilder()..update(updates))._build();

  _$BoqStatus._({required this.statusid, required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(statusid, r'BoqStatus', 'statusid');
    BuiltValueNullFieldError.checkNotNull(status, r'BoqStatus', 'status');
  }

  @override
  BoqStatus rebuild(void Function(BoqStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoqStatusBuilder toBuilder() => new BoqStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoqStatus &&
        statusid == other.statusid &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, statusid.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BoqStatus')
          ..add('statusid', statusid)
          ..add('status', status))
        .toString();
  }
}

class BoqStatusBuilder implements Builder<BoqStatus, BoqStatusBuilder> {
  _$BoqStatus? _$v;

  int? _statusid;
  int? get statusid => _$this._statusid;
  set statusid(int? statusid) => _$this._statusid = statusid;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  BoqStatusBuilder();

  BoqStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusid = $v.statusid;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoqStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BoqStatus;
  }

  @override
  void update(void Function(BoqStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BoqStatus build() => _build();

  _$BoqStatus _build() {
    final _$result = _$v ??
        new _$BoqStatus._(
            statusid: BuiltValueNullFieldError.checkNotNull(
                statusid, r'BoqStatus', 'statusid'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'BoqStatus', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
