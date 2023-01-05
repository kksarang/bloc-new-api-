// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Brand> _$brandSerializer = new _$BrandSerializer();

class _$BrandSerializer implements StructuredSerializer<Brand> {
  @override
  final Iterable<Type> types = const [Brand, _$Brand];
  @override
  final String wireName = 'Brand';

  @override
  Iterable<Object?> serialize(Serializers serializers, Brand object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'categoryID',
      serializers.serialize(object.categoryID,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.is_selected;
    if (value != null) {
      result
        ..add('is_selected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Brand deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandBuilder();

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
        case 'categoryID':
          result.categoryID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'is_selected':
          result.is_selected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$Brand extends Brand {
  @override
  final int id;
  @override
  final String name;
  @override
  final int categoryID;
  @override
  final bool? is_selected;

  factory _$Brand([void Function(BrandBuilder)? updates]) =>
      (new BrandBuilder()..update(updates))._build();

  _$Brand._(
      {required this.id,
      required this.name,
      required this.categoryID,
      this.is_selected})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Brand', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Brand', 'name');
    BuiltValueNullFieldError.checkNotNull(categoryID, r'Brand', 'categoryID');
  }

  @override
  Brand rebuild(void Function(BrandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandBuilder toBuilder() => new BrandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Brand &&
        id == other.id &&
        name == other.name &&
        categoryID == other.categoryID &&
        is_selected == other.is_selected;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), categoryID.hashCode),
        is_selected.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Brand')
          ..add('id', id)
          ..add('name', name)
          ..add('categoryID', categoryID)
          ..add('is_selected', is_selected))
        .toString();
  }
}

class BrandBuilder implements Builder<Brand, BrandBuilder> {
  _$Brand? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _categoryID;
  int? get categoryID => _$this._categoryID;
  set categoryID(int? categoryID) => _$this._categoryID = categoryID;

  bool? _is_selected;
  bool? get is_selected => _$this._is_selected;
  set is_selected(bool? is_selected) => _$this._is_selected = is_selected;

  BrandBuilder();

  BrandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _categoryID = $v.categoryID;
      _is_selected = $v.is_selected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Brand other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Brand;
  }

  @override
  void update(void Function(BrandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Brand build() => _build();

  _$Brand _build() {
    final _$result = _$v ??
        new _$Brand._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Brand', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Brand', 'name'),
            categoryID: BuiltValueNullFieldError.checkNotNull(
                categoryID, r'Brand', 'categoryID'),
            is_selected: is_selected);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
