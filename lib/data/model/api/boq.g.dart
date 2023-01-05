// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boq.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Boq> _$boqSerializer = new _$BoqSerializer();

class _$BoqSerializer implements StructuredSerializer<Boq> {
  @override
  final Iterable<Type> types = const [Boq, _$Boq];
  @override
  final String wireName = 'Boq';

  @override
  Iterable<Object?> serialize(Serializers serializers, Boq object,
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
  Boq deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BoqBuilder();

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

class _$Boq extends Boq {
  @override
  final int id;
  @override
  final String name;

  factory _$Boq([void Function(BoqBuilder)? updates]) =>
      (new BoqBuilder()..update(updates))._build();

  _$Boq._({required this.id, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Boq', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Boq', 'name');
  }

  @override
  Boq rebuild(void Function(BoqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoqBuilder toBuilder() => new BoqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Boq && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Boq')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class BoqBuilder implements Builder<Boq, BoqBuilder> {
  _$Boq? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  BoqBuilder();

  BoqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Boq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Boq;
  }

  @override
  void update(void Function(BoqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Boq build() => _build();

  _$Boq _build() {
    final _$result = _$v ??
        new _$Boq._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Boq', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Boq', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
