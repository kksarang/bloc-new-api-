// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Category> _$categorySerializer = new _$CategorySerializer();

class _$CategorySerializer implements StructuredSerializer<Category> {
  @override
  final Iterable<Type> types = const [Category, _$Category];
  @override
  final String wireName = 'Category';

  @override
  Iterable<Object?> serialize(Serializers serializers, Category object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'subCategories',
      serializers.serialize(object.subCategories,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SubCategory)])),
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
  Category deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryBuilder();

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
        case 'is_selected':
          result.is_selected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'subCategories':
          result.subCategories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SubCategory)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Category extends Category {
  @override
  final int id;
  @override
  final String name;
  @override
  final bool? is_selected;
  @override
  final BuiltList<SubCategory> subCategories;

  factory _$Category([void Function(CategoryBuilder)? updates]) =>
      (new CategoryBuilder()..update(updates))._build();

  _$Category._(
      {required this.id,
      required this.name,
      this.is_selected,
      required this.subCategories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Category', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Category', 'name');
    BuiltValueNullFieldError.checkNotNull(
        subCategories, r'Category', 'subCategories');
  }

  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => new CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        id == other.id &&
        name == other.name &&
        is_selected == other.is_selected &&
        subCategories == other.subCategories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), is_selected.hashCode),
        subCategories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Category')
          ..add('id', id)
          ..add('name', name)
          ..add('is_selected', is_selected)
          ..add('subCategories', subCategories))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _is_selected;
  bool? get is_selected => _$this._is_selected;
  set is_selected(bool? is_selected) => _$this._is_selected = is_selected;

  ListBuilder<SubCategory>? _subCategories;
  ListBuilder<SubCategory> get subCategories =>
      _$this._subCategories ??= new ListBuilder<SubCategory>();
  set subCategories(ListBuilder<SubCategory>? subCategories) =>
      _$this._subCategories = subCategories;

  CategoryBuilder();

  CategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _is_selected = $v.is_selected;
      _subCategories = $v.subCategories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Category other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Category build() => _build();

  _$Category _build() {
    _$Category _$result;
    try {
      _$result = _$v ??
          new _$Category._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Category', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Category', 'name'),
              is_selected: is_selected,
              subCategories: subCategories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subCategories';
        subCategories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Category', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
