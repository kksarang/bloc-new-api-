// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boq_product_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BoqProductData> _$boqProductDataSerializer =
    new _$BoqProductDataSerializer();

class _$BoqProductDataSerializer
    implements StructuredSerializer<BoqProductData> {
  @override
  final Iterable<Type> types = const [BoqProductData, _$BoqProductData];
  @override
  final String wireName = 'BoqProductData';

  @override
  Iterable<Object?> serialize(Serializers serializers, BoqProductData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'categories',
      serializers.serialize(object.categories,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Category)])),
      'subCategories',
      serializers.serialize(object.subCategories,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SubCategory)])),
      'brands',
      serializers.serialize(object.brands,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Brand)])),
      'products',
      serializers.serialize(object.products,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Product)])),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BoqProductData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BoqProductDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Category)]))!
              as BuiltList<Object?>);
          break;
        case 'subCategories':
          result.subCategories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SubCategory)]))!
              as BuiltList<Object?>);
          break;
        case 'brands':
          result.brands.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Brand)]))!
              as BuiltList<Object?>);
          break;
        case 'products':
          result.products.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Product)]))!
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

class _$BoqProductData extends BoqProductData {
  @override
  final BuiltList<Category> categories;
  @override
  final BuiltList<SubCategory> subCategories;
  @override
  final BuiltList<Brand> brands;
  @override
  final BuiltList<Product> products;
  @override
  final bool status;
  @override
  final String message;

  factory _$BoqProductData([void Function(BoqProductDataBuilder)? updates]) =>
      (new BoqProductDataBuilder()..update(updates))._build();

  _$BoqProductData._(
      {required this.categories,
      required this.subCategories,
      required this.brands,
      required this.products,
      required this.status,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        categories, r'BoqProductData', 'categories');
    BuiltValueNullFieldError.checkNotNull(
        subCategories, r'BoqProductData', 'subCategories');
    BuiltValueNullFieldError.checkNotNull(brands, r'BoqProductData', 'brands');
    BuiltValueNullFieldError.checkNotNull(
        products, r'BoqProductData', 'products');
    BuiltValueNullFieldError.checkNotNull(status, r'BoqProductData', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'BoqProductData', 'message');
  }

  @override
  BoqProductData rebuild(void Function(BoqProductDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoqProductDataBuilder toBuilder() =>
      new BoqProductDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoqProductData &&
        categories == other.categories &&
        subCategories == other.subCategories &&
        brands == other.brands &&
        products == other.products &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, categories.hashCode), subCategories.hashCode),
                    brands.hashCode),
                products.hashCode),
            status.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BoqProductData')
          ..add('categories', categories)
          ..add('subCategories', subCategories)
          ..add('brands', brands)
          ..add('products', products)
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class BoqProductDataBuilder
    implements Builder<BoqProductData, BoqProductDataBuilder> {
  _$BoqProductData? _$v;

  ListBuilder<Category>? _categories;
  ListBuilder<Category> get categories =>
      _$this._categories ??= new ListBuilder<Category>();
  set categories(ListBuilder<Category>? categories) =>
      _$this._categories = categories;

  ListBuilder<SubCategory>? _subCategories;
  ListBuilder<SubCategory> get subCategories =>
      _$this._subCategories ??= new ListBuilder<SubCategory>();
  set subCategories(ListBuilder<SubCategory>? subCategories) =>
      _$this._subCategories = subCategories;

  ListBuilder<Brand>? _brands;
  ListBuilder<Brand> get brands => _$this._brands ??= new ListBuilder<Brand>();
  set brands(ListBuilder<Brand>? brands) => _$this._brands = brands;

  ListBuilder<Product>? _products;
  ListBuilder<Product> get products =>
      _$this._products ??= new ListBuilder<Product>();
  set products(ListBuilder<Product>? products) => _$this._products = products;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BoqProductDataBuilder();

  BoqProductDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categories = $v.categories.toBuilder();
      _subCategories = $v.subCategories.toBuilder();
      _brands = $v.brands.toBuilder();
      _products = $v.products.toBuilder();
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoqProductData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BoqProductData;
  }

  @override
  void update(void Function(BoqProductDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BoqProductData build() => _build();

  _$BoqProductData _build() {
    _$BoqProductData _$result;
    try {
      _$result = _$v ??
          new _$BoqProductData._(
              categories: categories.build(),
              subCategories: subCategories.build(),
              brands: brands.build(),
              products: products.build(),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'BoqProductData', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'BoqProductData', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
        _$failedField = 'subCategories';
        subCategories.build();
        _$failedField = 'brands';
        brands.build();
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BoqProductData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
