import 'package:chopper/chopper.dart';

import '../../core/utilites/network/api_client.dart';
import '../model/api/api_data.dart';
import '../model/api/boq_product_data.dart';

part 'case_datasource.chopper.dart';

@ChopperApi()
abstract class CaseDataSource extends ChopperService {
  @Get(path: '/boq/masterArray')
  Future<Response<BoqProductData>> fetchBoqProductData();

  @Post(path: '/boq/addBoq')
  Future<Response<ApiData>> addBoq(
    @Field('customerID') int customerID,
    @Field('siteID') int siteID,
    @Field('description') String description,
    @Field('date') String date,
    @Field('catID') int catID,
    @Field('subcatID') int subcatID,
    @Field('productID') int productID,
    @Field('brandID') int brandID,
    @Field('quantity') int quantity,
  ); //SUb category id

  static CaseDataSource create() {
    final client = ApiClient.buildClient(_$CaseDataSource());
    return _$CaseDataSource(client);
  }
}
