import '../model/api/api_data.dart';
import '../model/api/boq_product_data.dart';
import '../model/api/case_details_data.dart';
import '../model/api/case_status_response.dart';
import '../resourses/case_datasource.dart';
import '../result.dart';
import 'base_repository.dart';

abstract class CaseRepository {
  Future<Result<CaseDetailsData>> fetchCaseDetails(int id);

  Future<Result<CaseStatusResponse>> fetchCaseStatus();

  Future<Result<ApiData>> addBoq(
    int siteID,
    int customerId,
    String description,
    String date,
    int catID,
    int subcatID,
    int productID,
    int brandID,
    int quantity,
  );

  Future<Result<BoqProductData>> fetchProductData();
}

class CaseRepositoryImpl with BaseRepository implements CaseRepository {
  final CaseDataSource _dataSource;
  CaseRepositoryImpl(this._dataSource);

  @override
  Future<Result<ApiData>> addBoq(
    int siteID,
    int customerId,
    String description,
    String date,
    int catID,
    int subcatID,
    int productID,
    int brandID,
    int quantity,
  ) async {
    return safeApiCall(
      () => _dataSource.addBoq(
        customerId,
        siteID,
        description,
        date,
        catID,
        subcatID,
        productID,
        brandID,
        quantity,
      ),
    );
  }

  @override
  Future<Result<CaseDetailsData>> fetchCaseDetails(int id) {
    // TODO: implement fetchCaseDetails
    throw UnimplementedError();
  }

  @override
  Future<Result<CaseStatusResponse>> fetchCaseStatus() {
    // TODO: implement fetchCaseStatus
    throw UnimplementedError();
  }

  @override
  Future<Result<BoqProductData>> fetchProductData() {
    // TODO: implement fetchProductData
    throw UnimplementedError();
  }
}
