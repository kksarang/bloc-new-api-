import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'api/api_data.dart';
import 'api/api_response.dart';
import 'api/boq.dart';
import 'api/boq_data.dart';
import 'api/boq_product_data.dart';
import 'api/brand.dart';
import 'api/case_details_data.dart';
import 'api/case_status_response.dart';
import 'api/category.dart';
import 'api/product.dart';
import 'api/sub_category.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  ApiData,
  ApiResponse,
  Category,
  Brand,
  Product,
  SubCategory,
  Boq,
  CaseDetailsData,
  BoqData,
  CaseStatusResponse,
  BoqProductData,
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
