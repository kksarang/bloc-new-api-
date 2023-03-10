// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CaseStatus> _$caseStatusSerializer = new _$CaseStatusSerializer();

class _$CaseStatusSerializer implements StructuredSerializer<CaseStatus> {
  @override
  final Iterable<Type> types = const [CaseStatus, _$CaseStatus];
  @override
  final String wireName = 'CaseStatus';

  @override
  Iterable<Object?> serialize(Serializers serializers, CaseStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CaseStatus deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaseStatusBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CaseStatus extends CaseStatus {
  @override
  final int id;
  @override
  final String name;

  factory _$CaseStatus([void Function(CaseStatusBuilder)? updates]) =>
      (new CaseStatusBuilder()..update(updates))._build();

  _$CaseStatus._({required this.id, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'CaseStatus', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'CaseStatus', 'name');
  }

  @override
  CaseStatus rebuild(void Function(CaseStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaseStatusBuilder toBuilder() => new CaseStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaseStatus && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CaseStatus')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class CaseStatusBuilder implements Builder<CaseStatus, CaseStatusBuilder> {
  _$CaseStatus? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CaseStatusBuilder();

  CaseStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaseStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CaseStatus;
  }

  @override
  void update(void Function(CaseStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CaseStatus build() => _build();

  _$CaseStatus _build() {
    final _$result = _$v ??
        new _$CaseStatus._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'CaseStatus', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CaseStatus', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
