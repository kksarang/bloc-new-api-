// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubCategory> _$subCategorySerializer = new _$SubCategorySerializer();

class _$SubCategorySerializer implements StructuredSerializer<SubCategory> {
  @override
  final Iterable<Type> types = const [SubCategory, _$SubCategory];
  @override
  final String wireName = 'SubCategory';

  @override
  Iterable<Object?> serialize(Serializers serializers, SubCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.categoryId;
    if (value != null) {
      result
        ..add('categoryId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
  SubCategory deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubCategoryBuilder();

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
        case 'categoryId':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$SubCategory extends SubCategory {
  @override
  final int id;
  @override
  final String name;
  @override
  final int? categoryId;
  @override
  final bool? is_selected;

  factory _$SubCategory([void Function(SubCategoryBuilder)? updates]) =>
      (new SubCategoryBuilder()..update(updates))._build();

  _$SubCategory._(
      {required this.id, required this.name, this.categoryId, this.is_selected})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'SubCategory', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'SubCategory', 'name');
  }

  @override
  SubCategory rebuild(void Function(SubCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubCategoryBuilder toBuilder() => new SubCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubCategory &&
        id == other.id &&
        name == other.name &&
        categoryId == other.categoryId &&
        is_selected == other.is_selected;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), categoryId.hashCode),
        is_selected.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubCategory')
          ..add('id', id)
          ..add('name', name)
          ..add('categoryId', categoryId)
          ..add('is_selected', is_selected))
        .toString();
  }
}

class SubCategoryBuilder implements Builder<SubCategory, SubCategoryBuilder> {
  _$SubCategory? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _categoryId;
  int? get categoryId => _$this._categoryId;
  set categoryId(int? categoryId) => _$this._categoryId = categoryId;

  bool? _is_selected;
  bool? get is_selected => _$this._is_selected;
  set is_selected(bool? is_selected) => _$this._is_selected = is_selected;

  SubCategoryBuilder();

  SubCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _categoryId = $v.categoryId;
      _is_selected = $v.is_selected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubCategory;
  }

  @override
  void update(void Function(SubCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubCategory build() => _build();

  _$SubCategory _build() {
    final _$result = _$v ??
        new _$SubCategory._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'SubCategory', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SubCategory', 'name'),
            categoryId: categoryId,
            is_selected: is_selected);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
