import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/model/api/api_data.dart';
import '../../data/repository/case_repository.dart';
import '../../data/result.dart';
import '../data/model/api/boq_data.dart';
import '../data/model/api/boq_product_data.dart';
import '../data/model/api/brand.dart';
import '../data/model/api/category.dart';
import '../data/model/api/product.dart';
import '../data/model/api/sub_category.dart';

class BoqFormCubit extends Cubit<Result<BoqProductData>> {
  final CaseRepository _caseRepository;

  PublishSubject<Result<ApiData>> _addEditBoqSubject = PublishSubject<Result<ApiData>>();
  Stream<Result<ApiData>> get addEditBoqResult => _addEditBoqSubject.stream;

  PublishSubject<String> _messageSubject = PublishSubject<String>();
  Stream<String> get messageStream => _messageSubject.stream;

  //Category
  int? _category;
  int? get selectedCategory => _category;
  BehaviorSubject<BuiltList<Category>?> _categoryController = BehaviorSubject();
  Stream<BuiltList<Category>?> get categoriesStream => _categoryController.stream;

  //Sub category
  int? _subCategory;
  int? get selectedSubCategory => _subCategory;
  BehaviorSubject<BuiltList<SubCategory>?> _subCategoryController = BehaviorSubject();
  Stream<BuiltList<SubCategory>?> get subCategoriesStream => _subCategoryController.stream;

  //Brand
  int? _brand;
  int? get selectedBrand => _brand;
  BehaviorSubject<BuiltList<Brand>?> _brandsController = BehaviorSubject();
  Stream<BuiltList<Brand>?> get brandStream => _brandsController.stream;

  //Product
  int? _product;
  int? get selectedProduct => _product;
  BehaviorSubject<BuiltList<Product>?> _productsController = BehaviorSubject();
  Stream<BuiltList<Product>?> get productsStream => _productsController.stream;

  BoqFormCubit(this._caseRepository) : super(Result.initial());

  //laod product data
  Future loadProductData() async {
    if (!(state is Loading)) {
      emit(Result.loading());
      Result<BoqProductData> result = await _caseRepository.fetchProductData();
      if (result is Success<BoqProductData>) {
        BoqProductData boqProductData = result.data;
        List<SubCategory> subCats = [];

        boqProductData.categories.forEach((category) {
          subCats.addAll(category.subCategories.map((p0) => p0.rebuild((b) => b..categoryId = category.id)));
        });

        BoqProductData data = boqProductData.rebuild((b) => b
          ..categories = boqProductData.categories.toBuiltList().rebuild((lb) {
            if (_category != null) {
              int index = boqProductData.categories.indexWhere((c) => c.id == _category);
              lb[index] = boqProductData.categories[index].rebuild((sb) => sb
                // ..is_selected = true
                ..subCategories = List<SubCategory>.empty().toBuiltList().toBuilder());
            } else {
              lb.first = boqProductData.categories.first.rebuild((sb) => sb..is_selected = true);
            }
          }).toBuilder()
          ..subCategories = subCats.toBuiltList().rebuild((lb) {
            if (_subCategory != null) {
              int index = subCats.indexWhere((c) => c.id == _subCategory);
              lb[index] = subCats[index].rebuild((sb) => sb..is_selected = true);
            } else {
              lb.first = subCats.first.rebuild((sb) => sb..is_selected = true);
            }
          }).toBuilder()
          ..brands = boqProductData.brands.rebuild((lb) {
            if (_brand != null) {
              int index = boqProductData.brands.indexWhere((c) => c.id == _brand);
              lb[index] = boqProductData.brands[index].rebuild((sb) => sb..is_selected = true);
            }
          }).toBuilder()
          ..products = boqProductData.products.rebuild((bldr) {
            if (_product != null) {
              int index = boqProductData.products.indexWhere((c) => c.id == _product);
              bldr[index] = boqProductData.products[index].rebuild((sb) => sb..is_selected = true);
            }
          }).toBuilder());

        emit(Result.success(data));
      } else {
        emit(result);
      }
    }
  }

  //add boq
  Future addBoq(int siteId, int customerId, int quantity) async {
    if (_brand == null) {
      _messageSubject.sink.add('Please select a brand');
    } else if (_product == null) {
      _messageSubject.sink.add('Please select a product');
    } else {
      _addEditBoqSubject.sink.add(Result.loading());
      Result<ApiData> result = await _caseRepository.addBoq(
          siteId, customerId, '', DateTime.now().toString(), _category!, _subCategory!, _product!, _brand!, quantity);
      _addEditBoqSubject.sink.add(result);
    }
  }

  //edit boq

  changeCategory(int category) {
    _category = category;

    _brand = null;
    _product = null;

    Success<BoqProductData> currentState = state as Success<BoqProductData>;

    _subCategory = currentState.data.categories.firstWhere((p0) => p0.id == category).subCategories.first.id;

    var data = currentState.data.rebuild((b) => b
      ..categories = currentState.data.categories
          .rebuild((listBuilder) => listBuilder
              .map((item) => item.rebuild((itemBuilder) => itemBuilder..is_selected = itemBuilder.id == category)))
          .toBuilder());
    emit(Result.success(data));
  }

  changeSubCategory(int subCategory) {
    _subCategory = subCategory;
    _brand = null;
    _product = null;

    Success<BoqProductData> currentState = state as Success<BoqProductData>;

    var data = currentState.data.rebuild((b) => b
      ..subCategories = currentState.data.subCategories
          .rebuild((listBuilder) => listBuilder
              .map((item) => item.rebuild((itemBuilder) => itemBuilder..is_selected = itemBuilder.id == subCategory)))
          .toBuilder());
    emit(Result.success(data));
  }

  changeBrand(int brand) {
    _brand = brand;
    Success<BoqProductData> currentState = state as Success<BoqProductData>;

    var data = currentState.data.rebuild((b) => b
      ..brands = currentState.data.brands
          .rebuild((listBuilder) => listBuilder
              .map((item) => item.rebuild((itemBuilder) => itemBuilder..is_selected = itemBuilder.id == brand)))
          .toBuilder());
    emit(Result.success(data));
  }

  changeProduct(int product) {
    _product = product;
    Success<BoqProductData> currentState = state as Success<BoqProductData>;

    var data = currentState.data.rebuild((b) => b
      ..products = currentState.data.products
          .rebuild((listBuilder) => listBuilder
              .map((item) => item.rebuild((itemBuilder) => itemBuilder..is_selected = itemBuilder.id == product)))
          .toBuilder());
    emit(Result.success(data));
  }

  void initUserSelections(BoqData data) {
    _category = data.categoryID;
    _subCategory = data.subcategoryID;
    _brand = data.brandID;
    _product = data.productID;
  }
}
