// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boq_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BoqData> _$boqDataSerializer = new _$BoqDataSerializer();

class _$BoqDataSerializer implements StructuredSerializer<BoqData> {
  @override
  final Iterable<Type> types = const [BoqData, _$BoqData];
  @override
  final String wireName = 'BoqData';

  @override
  Iterable<Object?> serialize(Serializers serializers, BoqData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'boqID',
      serializers.serialize(object.boqID, specifiedType: const FullType(int)),
      'productID',
      serializers.serialize(object.productID,
          specifiedType: const FullType(int)),
      'product',
      serializers.serialize(object.product,
          specifiedType: const FullType(String)),
      'categoryID',
      serializers.serialize(object.categoryID,
          specifiedType: const FullType(int)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'subcategoryID',
      serializers.serialize(object.subcategoryID,
          specifiedType: const FullType(int)),
      'subcategory',
      serializers.serialize(object.subcategory,
          specifiedType: const FullType(String)),
      'brandID',
      serializers.serialize(object.brandID, specifiedType: const FullType(int)),
      'brand',
      serializers.serialize(object.brand,
          specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  BoqData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BoqDataBuilder();

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
        case 'boqID':
          result.boqID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'productID':
          result.productID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'product':
          result.product = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'categoryID':
          result.categoryID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'subcategoryID':
          result.subcategoryID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'subcategory':
          result.subcategory = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'brandID':
          result.brandID = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BoqData extends BoqData {
  @override
  final int id;
  @override
  final int boqID;
  @override
  final int productID;
  @override
  final String product;
  @override
  final int categoryID;
  @override
  final String category;
  @override
  final int subcategoryID;
  @override
  final String subcategory;
  @override
  final int brandID;
  @override
  final String brand;
  @override
  final int quantity;

  factory _$BoqData([void Function(BoqDataBuilder)? updates]) =>
      (new BoqDataBuilder()..update(updates))._build();

  _$BoqData._(
      {required this.id,
      required this.boqID,
      required this.productID,
      required this.product,
      required this.categoryID,
      required this.category,
      required this.subcategoryID,
      required this.subcategory,
      required this.brandID,
      required this.brand,
      required this.quantity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'BoqData', 'id');
    BuiltValueNullFieldError.checkNotNull(boqID, r'BoqData', 'boqID');
    BuiltValueNullFieldError.checkNotNull(productID, r'BoqData', 'productID');
    BuiltValueNullFieldError.checkNotNull(product, r'BoqData', 'product');
    BuiltValueNullFieldError.checkNotNull(categoryID, r'BoqData', 'categoryID');
    BuiltValueNullFieldError.checkNotNull(category, r'BoqData', 'category');
    BuiltValueNullFieldError.checkNotNull(
        subcategoryID, r'BoqData', 'subcategoryID');
    BuiltValueNullFieldError.checkNotNull(
        subcategory, r'BoqData', 'subcategory');
    BuiltValueNullFieldError.checkNotNull(brandID, r'BoqData', 'brandID');
    BuiltValueNullFieldError.checkNotNull(brand, r'BoqData', 'brand');
    BuiltValueNullFieldError.checkNotNull(quantity, r'BoqData', 'quantity');
  }

  @override
  BoqData rebuild(void Function(BoqDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoqDataBuilder toBuilder() => new BoqDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoqData &&
        id == other.id &&
        boqID == other.boqID &&
        productID == other.productID &&
        product == other.product &&
        categoryID == other.categoryID &&
        category == other.category &&
        subcategoryID == other.subcategoryID &&
        subcategory == other.subcategory &&
        brandID == other.brandID &&
        brand == other.brand &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            boqID.hashCode),
                                        productID.hashCode),
                                    product.hashCode),
                                categoryID.hashCode),
                            category.hashCode),
                        subcategoryID.hashCode),
                    subcategory.hashCode),
                brandID.hashCode),
            brand.hashCode),
        quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BoqData')
          ..add('id', id)
          ..add('boqID', boqID)
          ..add('productID', productID)
          ..add('product', product)
          ..add('categoryID', categoryID)
          ..add('category', category)
          ..add('subcategoryID', subcategoryID)
          ..add('subcategory', subcategory)
          ..add('brandID', brandID)
          ..add('brand', brand)
          ..add('quantity', quantity))
        .toString();
  }
}

class BoqDataBuilder implements Builder<BoqData, BoqDataBuilder> {
  _$BoqData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _boqID;
  int? get boqID => _$this._boqID;
  set boqID(int? boqID) => _$this._boqID = boqID;

  int? _productID;
  int? get productID => _$this._productID;
  set productID(int? productID) => _$this._productID = productID;

  String? _product;
  String? get product => _$this._product;
  set product(String? product) => _$this._product = product;

  int? _categoryID;
  int? get categoryID => _$this._categoryID;
  set categoryID(int? categoryID) => _$this._categoryID = categoryID;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  int? _subcategoryID;
  int? get subcategoryID => _$this._subcategoryID;
  set subcategoryID(int? subcategoryID) =>
      _$this._subcategoryID = subcategoryID;

  String? _subcategory;
  String? get subcategory => _$this._subcategory;
  set subcategory(String? subcategory) => _$this._subcategory = subcategory;

  int? _brandID;
  int? get brandID => _$this._brandID;
  set brandID(int? brandID) => _$this._brandID = brandID;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  BoqDataBuilder();

  BoqDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _boqID = $v.boqID;
      _productID = $v.productID;
      _product = $v.product;
      _categoryID = $v.categoryID;
      _category = $v.category;
      _subcategoryID = $v.subcategoryID;
      _subcategory = $v.subcategory;
      _brandID = $v.brandID;
      _brand = $v.brand;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoqData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BoqData;
  }

  @override
  void update(void Function(BoqDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BoqData build() => _build();

  _$BoqData _build() {
    final _$result = _$v ??
        new _$BoqData._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'BoqData', 'id'),
            boqID: BuiltValueNullFieldError.checkNotNull(
                boqID, r'BoqData', 'boqID'),
            productID: BuiltValueNullFieldError.checkNotNull(
                productID, r'BoqData', 'productID'),
            product: BuiltValueNullFieldError.checkNotNull(
                product, r'BoqData', 'product'),
            categoryID: BuiltValueNullFieldError.checkNotNull(
                categoryID, r'BoqData', 'categoryID'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'BoqData', 'category'),
            subcategoryID: BuiltValueNullFieldError.checkNotNull(
                subcategoryID, r'BoqData', 'subcategoryID'),
            subcategory: BuiltValueNullFieldError.checkNotNull(
                subcategory, r'BoqData', 'subcategory'),
            brandID: BuiltValueNullFieldError.checkNotNull(
                brandID, r'BoqData', 'brandID'),
            brand: BuiltValueNullFieldError.checkNotNull(
                brand, r'BoqData', 'brand'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'BoqData', 'quantity'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
